import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc_bloc.freezed.dart';


class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(const AuthBlocState.initial()) {
    on<_Login>((event, emit) {
      emit(AuthBlocState.loggedIn(event.user));
    });

    on<_Logout>((event, emit) {
      emit(const AuthBlocState.loggedOut());
    });
  }
}
