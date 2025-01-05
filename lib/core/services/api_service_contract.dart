import 'package:rajas_first_asar_game/app/global_exports.dart';

abstract class ApiServiceContract {
  Future<Either<String,T>> get<T>(String endPoint,T Function(Map<String, dynamic>) responseFromJson, {Map<String, dynamic>? queryParams, String? baseUrl});
  Future<Either<String, T>> post<T>(String endPoint, Map<String, dynamic> payloadData, 
  T Function(Map<String, dynamic>) responseFromJson, {String? baseUrl});
  
}