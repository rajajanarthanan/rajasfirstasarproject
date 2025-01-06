import 'package:rajas_first_asar_game/core/data/models/asar_model.dart';

class CreateOtpResponse extends AsarModel{
  String message;
  String sessionId;
  CreateOtpResponse(
    {required this.message,
      required this.sessionId
    });
    
  static CreateOtpResponse fromJson(Map<String, dynamic> payload){
    return CreateOtpResponse(message: payload["message"], sessionId: payload["sessionId"]);
  }
  
  @override
  toEntity() {
    throw UnimplementedError();
  }
  
  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}


class VerifyOtpResponse extends AsarModel{
  String message;
  String token;
  int loginCount;
  VerifyOtpResponse({required this.message, required this.token, required this.loginCount});

  static VerifyOtpResponse fromJson(Map<String, dynamic> payload){
    return VerifyOtpResponse(message: payload['message'], token: payload['token'], loginCount: payload['loginCount']);
  }
  
  @override
  toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }
  
  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}


/*
verify otp
{
    "message": "OTP Verified, logged in successfully",
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3NzdjNGIxMzVjYWQ4MzgxZTVjNTAwNyIsIm1vYmlsZSI6OTAyNTI3ODkwOSwiaWF0IjoxNzM2MTM3OTk4fQ.GQPor4coE_URJnxAYZVjbWvuwYQP5z3-CAdbUI_kcWs",
    "loginCount": 4
}
*/