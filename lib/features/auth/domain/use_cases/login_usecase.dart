import 'package:get_it/get_it.dart';
import 'package:rajas_first_asar_game/app/config.dart';
import 'package:rajas_first_asar_game/app/services/auth_service.dart';
import 'package:rajas_first_asar_game/app/services/web_socket_service.dart';
import 'package:rajas_first_asar_game/core/data/models/response_models.dart';
import 'package:rajas_first_asar_game/core/data/respositories/Asar_Repository.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';
import 'package:rajas_first_asar_game/features/auth/domain/use_cases/auth_usecase.dart';

class LoginUsecase implements AuthUsecase{
  User user;
  String otp;
  late final AsarRepository repo;
  LoginUsecase(this.user, this.otp){
    repo = GetIt.I.get<AsarRepository>();
  }
 
  Future<User?> call() async{
    final loginResponse = await repo.postApi(endPoint: Config.asarApiV1.endPoints.verifyOtp,
     payloadData: {"mobile": user.mobileNumber, "sessionId": user.auth?.sessionId,
     "otp": otp
     }, fromJson: VerifyOtpResponse.fromJson);

     return loginResponse.fold((failure){
      logger.e(failure);
      return null;
      //TODO: throw warning alerts
     }, (success){
      final res = success as VerifyOtpResponse;
      final validUser = User(mobileNumber: user.mobileNumber, auth: Auth(state: AuthState.authenticated, 
      token: res.token, sessionId: user.auth?.sessionId));
      final authService = GetIt.I.get<AuthService>();
      authService.setUser(validUser);
      print('validUser: $validUser');
      print('authService_user: ${authService.user}');
      final ws = GetIt.I.get<WebSocketService>();
      // initalize ws here, let it connect with tokens
      // made it lazy, here it will be initiated instead of app init
      ws.connect();
      
      return validUser;

     });
  }


}