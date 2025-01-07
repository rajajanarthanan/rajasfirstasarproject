part of 'auth_bloc_bloc.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent.login(User user, String otp) = _Login;
  const factory AuthBlocEvent.logout() = _Logout;
  const factory AuthBlocEvent.requestOtp(String mobile) = _RequestOtp;
}
