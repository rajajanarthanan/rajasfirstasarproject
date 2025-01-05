import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:rajas_first_asar_game/core/domain/repository_contracts/asar_repository_contract.dart';

class AsarRepository implements AsarRepositoryContract  {

@override  
Future<Either<String, T>> getApi<T extends AsarModel>({
  required String endPoint,
  required T Function(Map<String, dynamic>) fromJson,
  String? baseUrl,
  Map<String, dynamic>? queryParams,
}) async {
  final result = await safeCall(() async {
    final apiService = GetIt.I.get<ApiService>();
    final response = await apiService.get<T>(
      endPoint,
      fromJson,
      queryParams: queryParams,
    );
    return response;
  });
  return result.fold(
    (failure) => Left(failure),
    (data) => Right(data),
  );
}

  @override
  Future<Either<String, T>> postApi<T extends AsarModel>({
    required String endPoint,
    required Map<String, dynamic> payloadData,
    required T Function(Map<String, dynamic>) fromJson,
    String? baseUrl,
  }) async {
    final result = await safeCall(() async {
      final apiService = GetIt.I.get<ApiService>();
      final response = await apiService.post<T>(
        endPoint,
        payloadData,
        fromJson,
      );
      return response;
    });
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