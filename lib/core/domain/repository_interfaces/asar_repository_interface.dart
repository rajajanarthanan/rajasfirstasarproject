import 'package:rajas_first_asar_game/app/global_exports.dart';

abstract class AsarRepositoryInterface {
  /// Api methods
  // Future<T> getApi<T>(String url, T Function(Map<String, dynamic>) fromJson, {Map<String, dynamic>? queryParams});
  Future<Either<String, dynamic>> getApi<T extends AsarModel>(
    {required String endPoint, required T Function(Map<String, dynamic>) fromJson,
     String? baseUrl, Map<String, dynamic>? queryParams});

  Future<Either<String, dynamic>> postApi<T extends AsarModel>({
    required String endPoint,
    required Map<String, dynamic> payloadData,
    required T Function(Map<String, dynamic>) fromJson,
    String? baseUrl,
    String? bearerToken
  });

  /// Socket methods
  Future<Either<String, Stream<T>>> getSocketStream<T extends AsarModel>(
    {required String eventName, required T Function(Map<String, dynamic>) fromJson});
  


  /// Local (Hive) methods
  Future<T> getLocal<T>();
  Future<T> setLocal<T>(T data);
  
  /// Remote Database methods 
  /// can extend based on the data source 
  /// Firestore/RealtimeDB/MongoDb/Postgres etc
  Future<T> getRemote<T>();
  Future<T> setRemote<T>(T data);
  void addRemoteDataListener<T>(Function(T) onData);

}