import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:rajas_first_asar_game/app/services/api_service.dart';
import 'package:rajas_first_asar_game/app/services/web_socket_service.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

Future<void> setupDependencies(GetIt getIt) async{
  getIt.registerSingleton(Dio());
  getIt.registerSingleton<IO.Socket>(
    IO.io(Config.asarWebSocket.baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    }),
  );
  getIt.registerLazySingleton(()=> WebSocketService());

  getIt.registerLazySingleton(()=> ApiService());
}
