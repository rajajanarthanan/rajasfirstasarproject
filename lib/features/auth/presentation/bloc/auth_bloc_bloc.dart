import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';
import 'package:rajas_first_asar_game/features/auth/domain/use_cases/login_usecase.dart';
import 'package:rajas_first_asar_game/features/auth/domain/use_cases/request_otp_usecase.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc_bloc.freezed.dart';


class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(const AuthBlocState.initial()) {
    on<_RequestOtp>((event, emit)async{          // request otp
      emit(AuthBlocState.loading());
      User? user = await RequestOtpUsecase(event.mobile).call();
      print('postOtpSentUser: $user');
      if(user == null){
        emit(AuthBlocState.loggedOut());
      } else{
        emit(AuthBlocState.otpSent(user));
      } 
      print('postOtpReceivedSate: ${user == null}');
    });


    
    on<_Login>((event, emit) async{                // verify otp
      emit(AuthBlocState.loading());
      
      User? user = await LoginUsecase(event.user, event.otp).call();
      print('loginUscaseResult: ${user == null}');
      (user == null) ? emit(AuthBlocState.loggedOut()) : emit(AuthBlocState.loggedIn(user));
    });

    on<_Logout>((event, emit) {
      emit(const AuthBlocState.loggedOut());
    });
  }
}
