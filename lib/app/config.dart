import 'package:logger/logger.dart';
final logger = Logger();

class Config {
  static final Api asarApiV1 = Api(baseUrl: 'http://188.245.123.97:8080/v1/', endPoints: AsarV1EndPoints());    
  static final Api asarApiV2 = Api(baseUrl: 'https://server.profinix.cloud/v1/', endPoints: AsarV1EndPoints());    
  static final AsarWebSocket asarWebSocket = AsarWebSocket();
  static final TestWebSocket testWebSocket= TestWebSocket();
  static final AppRoutes routes = AppRoutes();
}

class AsarWebSocket{
  final String baseUrl = 'http://188.245.123.97:8080';
  final AsarSocketEvents socketEvents = AsarSocketEvents();
}

class TestWebSocket{
  final String baseUrl = 'https://server.profinix.cloud';
  final AsarSocketEvents socketEvents = AsarSocketEvents();
}

class Api{
  String baseUrl;
  AsarV1EndPoints endPoints;
  Api({required this.baseUrl, required this.endPoints});
}

class AsarV1EndPoints{
  String get sendOtp => 'send-otp';
  String get verifyOtp => 'verify-otp';
  String get createOrder => 'create-order';
  String get events => 'events'; // get all events
}

class AsarSocketEvents{
  String get connect => 'connect';
  String get disconnect => 'disconnect';
  String get orderbookUpdate => 'orderbook_update';
}

class ThirdPartyEndPoints extends AsarV1EndPoints{}


class AppRoutes{
  String dashboard = '/dashboard';
  String auth = '/auth';
  String initialRoute = '/';
  String signup = '/signup';
  String asarTv = '/asartv';
}