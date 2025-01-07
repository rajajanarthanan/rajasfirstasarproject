import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:getwidget/getwidget.dart';
import 'package:rajas_first_asar_game/app/services/web_socket_service.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/bloc/auth_bloc_bloc.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/order_book_update_model.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/trading_events_model.dart';
import 'package:rajas_first_asar_game/features/events_trading/presentation/asar_tradingview_controller.dart';
import 'package:rajas_first_asar_game/features/events_trading/presentation/asar_events/asar_tv_events_bloc.dart';
import 'package:rajas_first_asar_game/features/events_trading/presentation/order_book_update_controller.dart';

class AsarTradingView extends StatefulWidget {
  @override
  State<AsarTradingView> createState() => _AsarTradingViewState();
}

class _AsarTradingViewState extends State<AsarTradingView> {
  late final AsarTradingviewController controller;
  late final OrderBookUpdateController orderBookController;

  @override
  void initState() {
    controller = AsarTradingviewController();
    orderBookController = OrderBookUpdateController(GetIt.I.get<WebSocketService>());
    orderBookController.onInit();
    final ws = GetIt.I.get<WebSocketService>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AsarTvEventsBloc>(
            create: (BuildContext context) => AsarTvEventsBloc())
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Trading Dashboard')),
        body: Center(
          child: Row(
            children: [
              Expanded(flex: 1, child: EventsListViewer()),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: BlocBuilder<AsarTvEventsBloc, AsarTvEventsState>(
                              builder: (context, state) {
                                return state.when(error: () => Center(child: Text("Error, Cannot be loaded Now")),
                                loading: () => Center(child: SizedBox(height: 300,width: 300,child: CircularProgressIndicator())),
                                initial: () => Center(child: SizedBox(height: 300,width: 300,child: CircularProgressIndicator())),
                                loaded: (events) => GFCarousel(
                                  autoPlay: true,
                                  items:events.map((e)=>EventCard(e)).toList(),
                                )); //GFCarousel(items: items);
                              },
                            ))),

                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Obx(() => (orderBookController.orderBookUpdate.value != null) ?
                              OrderBooklet(orderBookController.orderBookUpdate.value!)
                              // SingleChildScrollView(child:
                              //  Column(children: orderBookController.orderBookUpdate.value.map
                              //  ((order)=>OrderBooklet(order)).toList()))
                              : Center(child: Text("No Trades to show yet"),)
                            ),
                          )
                        ),                           
                        
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class OrderBooklet extends StatelessWidget {
  OrderBooklet(this.order,{super.key});
  OrderBookUpdateModel order;

  @override
  Widget build(BuildContext context) {
    return GFAccordion(titleChild: Center(child: Text("EventId: ${order.eventId}, #YesOrdes: ${order.orderBook?.yesOrders?.length}, #NoOrders: ${order.orderBook?.noOrders?.length}"),
    ),contentChild: Text(order.toJson().toString()), 
    );
  }
}

class EventsListViewer extends StatefulWidget {
  const EventsListViewer({super.key});

  @override
  State<EventsListViewer> createState() => _EventsListViewerState();
}

class _EventsListViewerState extends State<EventsListViewer> {
  @override
  void initState() {
    context.read<AsarTvEventsBloc>().add(AsarTvEventsEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AsarTvEventsBloc, AsarTvEventsState>(
        builder: (context, state) {
      return state.when(
        initial: () => Center(child: CircularProgressIndicator()),
        loading: () => Center(child: CircularProgressIndicator()),
        error: () => Center(
          child: Text("Something Went Wrong"),
        ),
        loaded: (events) => Container(
          child: SingleChildScrollView(
            child: Column(
                children: events.map((event) => EventItemTile(event)).toList()),
          ),
        ),
      );
    });
  }
}

class EventItemTile extends StatelessWidget {
  EventItemTile(this.event, {super.key});
  TradingEventsModel event;
  @override
  Widget build(BuildContext context) {
    return GFListTile(
      titleText: event.title,
      subTitleText: 'Started: ${event.createdAt}',

      // onTap: () {},
      firstButtonTitle: "Buy",
      onFirstButtonTap: (){
           final controller = OrderBookUpdateController(GetIt.I.get<WebSocketService>());
            controller.createOrder();

      },
      secondButtonTitle: "Sell",
      onSecondButtonTap: (){},
    );
  }
}


class EventCard extends StatelessWidget {
  EventCard(this.event, {super.key});
  TradingEventsModel event;
  @override
  Widget build(BuildContext context) {
    return Container(height: double.infinity,width: double.infinity,
    child: Column(children: [
      Expanded(flex:1,child: Text('OverView: ${event.overview}')),
      Expanded(flex:1, child: Text("Source-Of-Truth: ${event.sourceOfTruth}")),
      Expanded(flex: 3,child: Text(event.toJson().toString()),)
    ],),
    );
  }
}