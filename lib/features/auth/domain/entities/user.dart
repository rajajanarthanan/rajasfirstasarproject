import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rajas_first_asar_game/core/domain/entitiies/asar_entity.dart';

class User extends Equatable implements AsarEntity {
  String? uid;
  final String mobileNumber;
  Auth? auth;

  User({this.uid, required this.mobileNumber, this.auth});
  
  @override
  List<Object?> get props => [uid, mobileNumber, auth];
}


class Auth extends Equatable{
  final AuthState state;
  String? token;
  String? sessionId;

  Auth({required this.state, this.token, this.sessionId});
  
  @override
  List<Object?> get props => [state, token, sessionId];
}

enum AuthState{
  @JsonValue('authenticated') authenticated,
  @JsonValue('unathenticated') unauthenticated
}