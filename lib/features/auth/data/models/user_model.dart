
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? uid,
    required String mobileNumber,
    AuthModel? auth,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

extension UserModelToEntity on UserModel {
  User call() {
    return User(
      uid: uid,
      mobileNumber: mobileNumber,
      auth: auth?.call(),
    );
  }
}


@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required AuthState state,
    String? token,
    String? sessionId,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

}

extension AuthModelToEntity on AuthModel {
  Auth call() {
    return Auth(
      state: state,
      token: token,
      sessionId: sessionId,
    );
  }
}
