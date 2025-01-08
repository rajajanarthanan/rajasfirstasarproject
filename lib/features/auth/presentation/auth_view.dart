import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:rajas_first_asar_game/app/config.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/auth_view_controller.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/auth_view_mobile.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/auth_view_web.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/bloc/auth_bloc_bloc.dart';


class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('Welcome to Asar Trading World!'))),
      body: Center(child: GetPlatform.isMobile ? 
        AuthViewMobile() : AuthViewWeb()
              )
    );
  }
}
