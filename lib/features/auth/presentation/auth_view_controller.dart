import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rajas_first_asar_game/app/services/auth_service.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';

class AuthViewController {
  late final TextEditingController mobileTextController;
  late final TextEditingController otpController;
  late final AuthService authService;
  late User user;
  AuthViewController(){
    mobileTextController = TextEditingController();
    otpController = TextEditingController();
    authService = GetIt.I.get<AuthService>();
  }
  
}