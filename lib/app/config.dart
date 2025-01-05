import 'package:logger/logger.dart';
final logger = Logger();

class Config {
  static final Api asarApiV1 = Api(baseUrl: 'http://188.245.123.97:8080/v1/', endPoints: AsarV1EndPoints());    
  static final AsarWebSocket asarWebSocket = AsarWebSocket();
}

class AsarWebSocket{
  final String baseUrl = 'ws://188.245.123.97:8080';
  final AsarSocketEvents socketEvents = AsarSocketEvents();
}

class Api{
  String baseUrl;
  AsarV1EndPoints endPoints;
  Api({required this.baseUrl, required this.endPoints});
}

class AsarV1EndPoints{
  String get sendOtp => 'sendOtp';
  String get verifyOtp => 'verifyOtp';
  String get createOrder => 'createOrder';
  String get events => 'events'; // get all events
}

class AsarSocketEvents{
  String get connect => 'connect';
  String get disconnect => 'disconnect';
  String get orderbookUpdate => 'orderbook_update';
}

class ThirdPartyEndPoints extends AsarV1EndPoints{}