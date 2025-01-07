import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/trading_events_model.dart';
import 'package:rajas_first_asar_game/features/events_trading/domain/entities/trading_event.dart';
import 'package:rajas_first_asar_game/features/events_trading/domain/usecases/fetch_events_usecase.dart';

part 'asar_tv_events_event.dart';
part 'asar_tv_events_state.dart';
part 'asar_tv_events_bloc.freezed.dart';

class AsarTvEventsBloc extends Bloc<AsarTvEventsEvent, AsarTvEventsState> {
  AsarTvEventsBloc() : super(_Initial()) {
    on<AsarTvEventsEvent>((event, emit) async{
      emit(AsarTvEventsState.loading());
      final List<TradingEventsModel>? fetchResults = await FetchEventsUsecase().call();
      if(fetchResults == null){
        emit(AsarTvEventsState.error());
      }else{
        emit(AsarTvEventsState.loaded(fetchResults));
      }
      
      // else
      // 
    });
  }
}
