import 'package:rajas_first_asar_game/app/global_exports.dart';

abstract class WebSocketServiceInterface {
  void connect();
  void disconnect();
  void send(String message);
  Future<Either<String, Stream<T>>> registerListener<T extends AsarModel>(String eventName, String listenerName, T Function(Map<String, dynamic> payload) fromJson);
  void removeListener(Function(String) listener);
}