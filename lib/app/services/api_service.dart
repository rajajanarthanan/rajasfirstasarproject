import 'package:dio/dio.dart';
import 'package:rajas_first_asar_game/core/services/api_service_interface.dart';
import '../global_exports.dart';


class ApiService implements ApiServiceInterface{
  final Dio _dio = GetIt.I<Dio>();
  @override
  Future<Either<String,AsarResponse<T>>> get<T>(String endPoint,T Function(Map<String, dynamic>) responseFromJson, {Map<String, dynamic>? queryParams, String? baseUrl,
  
  }) async{
    final url = (baseUrl == null) ? Config.asarApiV1.baseUrl + endPoint : baseUrl + endPoint;
    final result = await safeCall(()async{
            
      final getResult = await _dio.get(url, queryParameters: queryParams);

      if(getResult.statusCode != 200) return 'Failed to get data';
      if(getResult.data == null) return 'No data found';
      return getResult.data!;
    });
    
    return result.fold((failure) => Left(failure), 
    (data){
      if(data is Map<String, dynamic>){
        return Right(Sob(responseFromJson(data)));
    }else if(data is List){
      final values = data.map((json)=> responseFromJson(json)).toList();
      return Right(Lob(values));
    }
    else{
      return Left(data.toString());
    }
    });
    } 
    
  @override
  Future<Either<String, AsarResponse<T>>> post<T>(String endPoint, Map<String, dynamic> payloadData,
  T Function(Map<String, dynamic>) responseFromJson, {String? baseUrl, String? bearerToken}) async{
  final url = (baseUrl == null) ? Config.asarApiV1.baseUrl + endPoint : baseUrl + endPoint;
  
  final result = await safeCall(()async{
    final options = (bearerToken!=null) ? Options(headers: {'Authorization': 'Bearer $bearerToken'}) : null;
    final postResult = await _dio.post(url, data: payloadData, options: options);
    
    if(postResult.statusCode! > 399) return 'Failed to post data wih statusCode: ${postResult.statusCode}';
    if(postResult.data == null) return 'No data found';
    return postResult.data!;
    });

    return result.fold((failure) => Left(failure), 
      (data){
      if(data is Map<String, dynamic>){
      return Right(Sob(responseFromJson(data)));
      }else if(data is List){
      final values = data.map((json)=> responseFromJson(json)).toList();
      return Right(Lob(values));
    }
    else{
      return Left(data.toString());
    }
    });
  }
}


/***
 * Reponse Body will be handled to single object instance
 * or a list of object instance of T type based on the response
 * dynamically and able to cast as required
 */
abstract class AsarResponse<T>{
  dynamic get getValue;
}

// Single Object Response Body
class Sob<T> implements AsarResponse<T>{
  T value;
  Sob(this.value);
  
  @override
  T get getValue => value;
}

// List of Objects Response Body
class Lob<T> implements AsarResponse<T>{
  List<T> values;
  Lob(this.values);
  @override
  List<T> get getValue => values;
}