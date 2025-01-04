
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

  User toEntity() {
    return User(
      uid: uid,
      mobileNumber: mobileNumber,
      auth: auth?.toEntity(),
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

  Auth toEntity() {
    return Auth(
      state: state,
      token: token,
      sessionId: sessionId,
    );
  }
}
