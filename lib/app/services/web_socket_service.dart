import 'dart:async';

import 'package:rajas_first_asar_game/core/services/web_socket_service_interface.dart';
import 'package:rajas_first_asar_game/features/events_trading/data/models/order_book_update_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../global_exports.dart';
import 'auth_service.dart';
/***
 * //TODO: Should Init after AuthService gets auth from AuthView - loginUse Case sets thru asarRepo, split ti to AuthRepo later
 * github stash
 */
class WebSocketService implements WebSocketServiceInterface {
  late final IO.Socket socket; 
  
  //eventName -> streamController
  Map<String,StreamController<dynamic>> listeners = {}; 

    final StreamController<OrderBookUpdateModel> _orderBookStreamController =
      StreamController<OrderBookUpdateModel>.broadcast();
  final authService = GetIt.I.get<AuthService>();
  get connectionOpts => IO.OptionBuilder()
        .setTransports(['websocket']) 
        .setExtraHeaders({
          'Authorization': 'Bearer ${authService.user?.auth?.token}',
          'sessionId': authService.user?.auth?.sessionId,
        })
        .build();

  WebSocketService(){
      socket = IO.io(Config.asarWebSocket.baseUrl, connectionOpts);
      socket.onConnect((_) {
        socket.emit('msg', 'test');
      });

    

    socket.on(Config.asarWebSocket.socketEvents.orderbookUpdate,(data){
      final update = OrderBookUpdateModel.fromJson(data);
      _orderBookStreamController.add(update); 

      print('orderbook update: $data');
    });
    // connect();
   }

  Stream<OrderBookUpdateModel> get orderBookUpdates =>
    _orderBookStreamController.stream;
 
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