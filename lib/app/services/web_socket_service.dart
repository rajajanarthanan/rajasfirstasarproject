import 'dart:async';

import 'package:rajas_first_asar_game/core/services/web_socket_service_interface.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/order_book_update_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../global_exports.dart';

class WebSocketService implements WebSocketServiceInterface {
  late final IO.Socket socket; 
  
  //eventName -> streamController
  Map<String,StreamController<dynamic>> listeners = {}; 
   WebSocketService(){
      socket = IO.io(Config.asarWebSocket.baseUrl);
      socket.onConnect((_) {
        socket.emit('msg', 'test');
      });

    // socket.on(Config.asarWebSocket.socketEvents.orderbookUpdate,(data){
    //   if(!listeners.containsKey(Config.asarWebSocket.socketEvents.orderbookUpdate)){
    //     StreamController<OrderBookUpdateModel> streamController = StreamController<OrderBookUpdateModel>();

    //   }
    //   print('orderbook update: $data');
    // });
    connect();
   }
  @override
  void connect() {
    socket.connect();
  }
  
  @override
  void removeListener(Function(String p1) listener) {
    // TODO: implement removeListener
    
  }
  
  @override
  void send(String message) {
    // TODO: implement send
  }
  
  @override
  void disconnect() {
    socket.disconnect();
    socket.dispose();
  }
  
  @override
  Future<Either<String, Stream<T>>> registerListener<T extends AsarModel>(String eventName,
  T Function(Map<String, dynamic> payload) fromJson) async{
    final result = await safeCall((){
      if(!listeners.containsKey(eventName)){
        final StreamController<T> streamController = StreamController<T>.broadcast();
        listeners[eventName] = streamController;
      }
            
      socket.on(eventName,(payload){
        listeners[eventName]!.add(fromJson(payload));
        
      });
      return listeners[eventName]!.stream;
    });
    return result.fold((failure)=> Left(failure), (success)=> Right(success));
  }
}