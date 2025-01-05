import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:test/test.dart';
import '../../mocks/dio_mock.mocks.dart';

void main() {
  late ApiService apiService;
  late MockDio mockDio;

  setUpAll(() {
    mockDio = MockDio();
    GetIt.I.registerSingleton<Dio>(mockDio);
    apiService = ApiService();
  });

  group('ApiService_Get', () {
    test('Failure Get request', () async{
      //arrange
      when(mockDio.get<Map<String, dynamic>>(
        any,
        queryParameters: anyNamed('queryParameters'),
      )).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(path: Config.asarApiV1.endPoints.events),
            data: null,
            statusCode: 404,
          ));
      String testUrl = Config.asarApiV1.baseUrl + Config.asarApiV1.endPoints.events;

      //act
      final result = await apiService.get<Map<String, dynamic>>(
        Config.asarApiV1.endPoints.events,
        (json) => json,
      );

      //assert
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r), equals('Failed to get data'));
      verify(mockDio.get<Map<String, dynamic>>(testUrl, queryParameters: null)).called(1);
    });

    test('Successful GET request', () async {
      //arrange
      const testData = {'key': 'value'};
      when(mockDio.get<Map<String, dynamic>>(
        any,
        queryParameters: anyNamed('queryParameters'),
      )).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(path: Config.asarApiV1.endPoints.events),
            data: testData,
            statusCode: 200,
          ));

      //act
      final result = await apiService.get<Map<String, dynamic>>(
        Config.asarApiV1.endPoints.events,
        (json) => json,
      );

      //assert
      expect(result, equals(Right(testData)));

      String testUrl = Config.asarApiV1.baseUrl + Config.asarApiV1.endPoints.events;
      verify(mockDio.get<Map<String, dynamic>>(testUrl, queryParameters: null)).called(1);
    });    
    
  });

  group('ApiService_Post',(){
    test('Failure Post request', () async{
      //arrange
      when(mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
      )).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(path: Config.asarApiV1.endPoints.createOrder),
            statusMessage: "Failed to post data",
            statusCode: 500,
          ));
      String testUrl = Config.asarApiV1.baseUrl + Config.asarApiV1.endPoints.createOrder;

      //act
      final result = await apiService.post<Map<String, dynamic>>(
        Config.asarApiV1.endPoints.createOrder,
        {'key': 'value'}, (json) => json,
      );

      //assert
      expect(result, isA<Left>());
      expect(result.fold((l) => l, (r) => r), equals('Failed to post data'));
      verify(mockDio.post(testUrl, data: {'key': 'value'})).called(1);
    });


    test('Successful POST request', () async {
      //arrange
      const testData = {'key': 'value'};
      when(mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
      )).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(path: Config.asarApiV1.endPoints.createOrder),
            data: testData,
            statusCode: 200,
          ));

      //act
      final result = await apiService.post<Map<String, dynamic>>(
        Config.asarApiV1.endPoints.createOrder,
        {'key': 'value'}, (json) => json,
      );

      //assert
      expect(result, equals(Right(testData)));

      String testUrl = Config.asarApiV1.baseUrl + Config.asarApiV1.endPoints.createOrder;
      verify(mockDio.post(testUrl, data: {'key': 'value'})).called(1);
    });
  
  
  });

  
  tearDownAll(() {
    GetIt.I.reset();
  });
}


