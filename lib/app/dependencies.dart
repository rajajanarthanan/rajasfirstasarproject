import 'package:dio/dio.dart';
import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:rajas_first_asar_game/app/services/auth_service.dart';
import 'package:rajas_first_asar_game/app/services/web_socket_service.dart';
import 'package:rajas_first_asar_game/core/data/respositories/Asar_Repository.dart';
import 'package:rajas_first_asar_game/main.dart';
import 'package:rajas_first_asar_game/test_controller.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

Future<void> setupDependencies(GetIt getIt) async{
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(AuthService());
  getIt.registerSingleton<AsarRepository>(AsarRepository());
  getIt.registerSingleton<TestWidgetController>(TestWidgetController());
  
  getIt.registerSingleton(WebSocketService());

  getIt.registerLazySingleton(()=> ApiService());

}
