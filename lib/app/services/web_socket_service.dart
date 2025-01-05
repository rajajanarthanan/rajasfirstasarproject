import 'dart:async';

import 'package:rajas_first_asar_game/core/services/web_socket_service_interface.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../global_exports.dart';

class WebSocketService implements WebSocketServiceInterface {
  late final IO.Socket socket; 
  // Map<String, Map<String, Function(Map<String, dynamic>? payload)>> listeners = {};  // eventName -> listenerName -> listener
  Map<String, Map<String, StreamController<dynamic>>> listeners = {}; // eventName -> listener/streamName -> Stream
   WebSocketService(){
    socket = GetIt.I<IO.Socket>();
    socket.on(Config.asarWebSocket.socketEvents.connect,(_){
      logger.d('Socket connected');
    });
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
  Future<Either<String, Stream<T>>> registerListener<T extends AsarModel>(String eventName, String listenerName, T Function(Map<String, dynamic> payload) fromJson) async{
    final result = await safeCall((){
      if(listeners[eventName] == null){
        listeners[eventName] = {};
      }
      final StreamController<T> streamController = StreamController<T>.broadcast();
      listeners[eventName]![listenerName] = streamController;
      socket.on(eventName,(payload){
        listeners[eventName]!.forEach((key, value) {
            value.add(fromJson(payload));
        });
      });
      return streamController.stream;
    });
    return result.fold((failure)=> Left(failure), (success)=> Right(success));
  }
}