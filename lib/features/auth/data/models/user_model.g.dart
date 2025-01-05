// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String?,
      mobileNumber: json['mobileNumber'] as String,
      auth: json['auth'] == null
          ? null
          : AuthModel.fromJson(json['auth'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'mobileNumber': instance.mobileNumber,
      'auth': instance.auth,
    };

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      state: $enumDecode(_$AuthStateEnumMap, json['state']),
      token: json['token'] as String?,
      sessionId: json['sessionId'] as String?,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'state': _$AuthStateEnumMap[instance.state]!,
      'token': instance.token,
      'sessionId': instance.sessionId,
    };

const _$AuthStateEnumMap = {
  AuthState.authenticated: 'authenticated',
  AuthState.unauthenticated: 'unathenticated',
};
