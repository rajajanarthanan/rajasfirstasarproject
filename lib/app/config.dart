class Config {
  static final Api asarApiV1 = Api(baseUrl: 'http://188.245.123.97:8080/v1/', endPoints: AsarV1EndPoints());    
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

class ThirdPartyEndPoints extends AsarV1EndPoints{}