
import 'package:flutter/material.dart';
import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:rajas_first_asar_game/app/services/web_socket_service.dart';
import 'package:rajas_first_asar_game/core/data/models/response_models.dart';
import 'package:rajas_first_asar_game/core/data/respositories/Asar_Repository.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/order_book_update_model.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/order_model.dart';
import 'package:socket_io_client/socket_io_client.dart';



class TestWidgetController{
  String sessionId = '';
  String token = '';
  late final AsarRepository repo;
  late final TextEditingController otpController;
  TestWidgetController({sessionId, token}){
    repo = GetIt.I.get<AsarRepository>();
    otpController = TextEditingController();
  }
  setSessionId(String sessionId) => sessionId = sessionId;
  setToken(String token) => token = token;


  Future<void> sendOtp()async{

  final otpRes = await repo.postApi<CreateOtpResponse>(endPoint: Config.asarApiV1.endPoints.sendOtp, payloadData: {"mobile":"9025278909"}, fromJson: 
    CreateOtpResponse.fromJson);
  otpRes.fold((l)=>logger.e(l), (r){
    logger.d(r);
    final otpresponse = r as CreateOtpResponse;
    print('sessionId ${otpresponse.sessionId}');
    sessionId = otpresponse.sessionId;
    print('saved sessionId: $sessionId');    
    
  });
}

Future<void> verifyOtp()async{
  final otp = otpController.text;
  print('verifygin otp with sessionId: $sessionId and otp: $otp');
  final tokenRes = await repo.postApi<VerifyOtpResponse>(endPoint: Config.asarApiV1.endPoints.verifyOtp, payloadData: {"mobile":"9025278909",
  "sessionId": sessionId, "otp": otp,
  }, fromJson: 
    VerifyOtpResponse.fromJson);
  tokenRes.fold((l)=>logger.e(l), (r){
    logger.d(r);
    final tokenresponse = r as VerifyOtpResponse;
    token = tokenresponse.token;
    print('saved token: $token')                                                                    ;
  });
}

Future<void> createOrder()async{
  print('creating order with token: $token');
  final res = await repo.getSocketStream(eventName: Config.asarWebSocket.socketEvents.orderbookUpdate,
   fromJson: OrderBookUpdateModel.fromJson);
   res.fold((l)=> logger.e(l),(stream){
    stream.listen((newOrderUpdate){
      logger.d('newOrderUpdate: $newOrderUpdate');
    });
   });

  final orderRequest = OrderRequestModel(eventId: "677b8b4dd1eed15208be72a4", 
  type: "no",
   quantity: 10, price: 0.75).toJson();



   final createOrder = await repo.postApi(endPoint: Config.asarApiV1.endPoints.createOrder, 
   payloadData: orderRequest, fromJson: OrderModel.fromJson, bearerToken: token);
   createOrder.fold((l)=>logger.e(l), (success){
    logger.d(success);
   });
}
 
}



/*
Future<void> testFunction() async{
  print('testing starts');
  // await testApiGet();
  // await testApiPost();
  // await testWebsocket();
  // await testAsarRepoGetApi();
  await testAsarRepoGetSocketStream();
}

Future<void> testWebsocket()async{
  final socket = WebSocketService();
  socket.connect();
  socket.socket.onConnect((data){print('sdf $data');});

}

Future<void> testApiPost() async{
  final api = ApiService();
  final res = await api.post(Config.asarApiV2.endPoints.sendOtp,{"mobile":"9025278909"},
  CreateOtpResponse.fromJson
  );
  res.fold((l)=>logger.e(l),(r){
    if(r is Sob){
      final values = r.getValue as CreateOtpResponse;
      print('values: ${values.message}');
    }
  });
  print('res: $res');
}


Future<void> testApiGet() async{
  final api = ApiService();
  final res = await api.get(Config.asarApiV2.endPoints.events,TradingEventsModel.fromJson);
  res.fold((l)=>logger.e(l),(r){
    if(r is Lob){
      final values = r.getValue as List<TradingEventsModel>;
      print('values: ${values.first.eventStartedOn}');
    }
  });
  print('res: $res');
}

Future<void> testAsarRepoGetApi() async{
  final repo = AsarRepository();
  final res = await repo.getApi(endPoint: Config.asarApiV1.endPoints.events, 
  fromJson: TradingEventsModel.fromJson);
  res.fold((l) => logger.e(l),(r){
    if(r is List) print('list received');
    
   logger.d(r);
  }
);
}


Future<void> testAsarRepoGetSocketStream() async{
  final repo = AsarRepository();
  final res = await repo.getSocketStream(eventName: Config.asarWebSocket.socketEvents.orderbookUpdate,
   fromJson: OrderBookUpdateModel.fromJson);
   res.fold((l)=> logger.e(l),(stream){
    stream.listen((newOrderUpdate){
      logger.d('newOrderUpdate: $newOrderUpdate');
    });
   });

  final orderRequest = OrderRequestModel(eventId: "677b8b4dd1eed15208be72a4", 
  type: "no",
   quantity: 10, price: 0.75).toJson();



   final createOrder = await repo.postApi(endPoint: Config.asarApiV1.endPoints.createOrder, 
   payloadData: orderRequest, fromJson: OrderModel.fromJson);
   createOrder.fold((l)=>logger.e(l), (success){
    print('order created $success');
    logger.d(success);
   });
}
*/
