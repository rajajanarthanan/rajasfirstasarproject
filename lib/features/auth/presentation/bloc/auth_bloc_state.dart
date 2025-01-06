part of 'auth_bloc_bloc.dart';

@freezed
class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState.initial() = Initial;
  const factory AuthBlocState.loggedIn(User user) = LoggedIn;
  const factory AuthBlocState.loggedOut() = LoggedOut;
}
