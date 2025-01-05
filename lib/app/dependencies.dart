import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:rajas_first_asar_game/app/services/api_service.dart';



Future<void> setupDependencies(GetIt getIt) async{
  getIt.registerSingleton(Dio());

  getIt.registerLazySingleton(()=> ApiService());
}
