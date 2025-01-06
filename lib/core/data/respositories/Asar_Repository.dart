import 'dart:async';

import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:rajas_first_asar_game/app/services/web_socket_service.dart';
import 'package:rajas_first_asar_game/core/domain/repository_interfaces/asar_repository_interface.dart';

class AsarRepository implements AsarRepositoryInterface {

@override  
Future<Either<String, dynamic>> getApi<T extends AsarModel>({
  required String endPoint,
  required T Function(Map<String, dynamic>) fromJson,
  String? baseUrl,
  Map<String, dynamic>? queryParams,
}) async {
    final apiService = GetIt.I.get<ApiService>();
    final response = await apiService.get<T>(
      endPoint,
      fromJson,
      queryParams: queryParams,
    );
    return response.fold((l) => Left(l),
    (r){
      if(r is Lob){
        final values = r.getValue as List<T>;
        return Right(values);
      }
      if(r is Sob){
        final value = r.getValue as T;
        return Right(value);
      }
      return Right(r);
    }
    );
  
  
}

  @override
  Future<Either<String, dynamic>> postApi<T extends AsarModel>({
    required String endPoint,
    required Map<String, dynamic> payloadData,
    required T Function(Map<String, dynamic>) fromJson,
    String? baseUrl,
    String? bearerToken
  }) async {
      final apiService = GetIt.I.get<ApiService>();
      final response = await apiService.post<T>(
        endPoint,
        payloadData,
        fromJson, bearerToken: bearerToken
      );
      return response.fold((l)=> Left(l), 
      (r){
        if(r is Lob){
        final values = r.getValue as List<T>;
        return Right(values);
      }
      if(r is Sob){
        final value = r.getValue as T;
        return Right(value);
      }
      return Right(r);
      }
      );
  }

  @override
  Future<Either<String, Stream<T>>> getSocketStream<T extends AsarModel>({
    required String eventName, 
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
      final webSocketService = GetIt.I.get<WebSocketService>();
      final result = await webSocketService.registerListener(eventName, fromJson);      
    return result.fold(
      (failure) => Left(failure),
      (data) => Right(data),
    );
  }

    
    
  
  

  @override
  Future<T> getLocal<T>() {
    // TODO: implement getLocal
    throw UnimplementedError();
  }

  @override
  Future<T> setLocal<T>(T data) {
    // TODO: implement setLocal
    throw UnimplementedError();
  }


  @override
  Future<T> getRemote<T>() {
    // TODO: implement getRemote
    throw UnimplementedError();
  }  


  @override
  Future<T> setRemote<T>(T data) {
    // TODO: implement setRemote
    throw UnimplementedError();
  }
  
  @override
  void addRemoteDataListener<T>(Function(T p1) onData) {
    // TODO: implement addRemoteDataListener
    throw UnimplementedError();
  }



}