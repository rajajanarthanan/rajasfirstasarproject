import 'package:get_it/get_it.dart';
import 'package:rajas_first_asar_game/app/config.dart';
import 'package:rajas_first_asar_game/app/services/auth_service.dart';
import 'package:rajas_first_asar_game/core/data/models/response_models.dart';
import 'package:rajas_first_asar_game/core/data/respositories/Asar_Repository.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';
import 'package:rajas_first_asar_game/features/auth/domain/use_cases/auth_usecase.dart';

class RequestOtpUsecase implements AuthUsecase{
  
  /***
   * We dont implement feuture specific repos since use cases are very few
   * but each feare repo can share unified datastore from AsarRepo
   * and extend feature specific methods
   */
  late final AsarRepository repo;
  String mobile;
  RequestOtpUsecase(this.mobile){
    repo = GetIt.I.get<AsarRepository>();
  }

  Future<User?> call()async{
    final otpResponse = await repo.postApi(endPoint: Config.asarApiV1.endPoints.sendOtp, payloadData: {"mobile":mobile}, fromJson: CreateOtpResponse.fromJson);
    return otpResponse.fold((failure){
      logger.e(failure);
      return null;
      // TODO: throw warning about issue => inform issue to user
      // TODO: emit events of states of master alert utility widgets with payload
    }, (success){
      logger.d('success OtpSentResponse');
      // TODO: snack user with message on sent OTP
      final res = success as CreateOtpResponse;
      print('res: $res');
      print('sessionId: ${res.sessionId}');
      final otpUser = User(mobileNumber: mobile, auth: Auth(sessionId: res.sessionId, state: AuthState.unauthenticated));
      print('otpUser: $otpUser');
      return otpUser;
    });
  }



}