import 'package:dio/dio.dart';
import 'package:rajas_first_asar_game/core/services/api_service_contract.dart';
import '../global_exports.dart';


class ApiService implements ApiServiceContract{
final Dio _dio = GetIt.I<Dio>();
@override
Future<Either<String,T>> get<T>(String endPoint,T Function(Map<String, dynamic>) responseFromJson, {Map<String, dynamic>? queryParams, String? baseUrl}) async{
    final url = (baseUrl == null) ? Config.asarApiV1.baseUrl + endPoint : baseUrl + endPoint;
    final result = await safeCall(()async{
      final getResult = await _dio.get<Map<String, dynamic>>(url, queryParameters: queryParams);
      if(getResult.statusCode != 200) return 'Failed to get data';
      if(getResult.data == null) return 'No data found';
      return responseFromJson(getResult.data!);
    },logTitle: 'getApi');
    
    return result.fold((failure) => Left(failure), 
    (data){
      if(data is T){
        return Right(data);
    }else{
      return Left(data.toString());
    }
    });
    } 
    
    @override
    Future<Either<String, T>> post<T>(String endPoint, Map<String, dynamic> payloadData,
    T Function(Map<String, dynamic>) responseFromJson, {String? baseUrl}) async{
      final url = (baseUrl == null) ? Config.asarApiV1.baseUrl + endPoint : baseUrl + endPoint;
      final result = await safeCall(()async{
        final postResult = await _dio.post<Map<String, dynamic>>(url, data: payloadData);
        if(postResult.statusCode != 200) return 'Failed to post data';
        if(postResult.data == null) return 'No data found';
        return responseFromJson(postResult.data!);
      },logTitle: 'postApi');
      
      return result.fold((failure) => Left(failure), 
      (data){
        if(data is T){
          return Right(data);
      }else{
        return Left(data.toString());
      }
      });
    }
}

