import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';


import 'package:rajas_first_asar_game/app/dependencies.dart';
import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/auth_view.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/bloc/auth_bloc_bloc.dart';
import 'package:rajas_first_asar_game/features/events_trading/presentation/asar_trading_view.dart';


void main() async {
  final GetIt getIt = GetIt.instance;
  await setupDependencies(getIt);
  runApp(AsarApp());
}

class AsarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: BlocListener<AuthBloc, AuthBlocState>(
        listener: (context, state) {
          if (state is LoggedIn && (ModalRoute.of(context)?.settings.name == Config.routes.auth || 
                          ModalRoute.of(context)?.settings.name == Config.routes.signup)) {
            Navigator.pushReplacementNamed(context, Config.routes.asarTv);
          } else if (state is LoggedOut) {
            Navigator.pushReplacementNamed(context, Config.routes.auth);
          }
        },
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            Config.routes.initialRoute: (context) => AuthView(),
            Config.routes.asarTv: (context) => AsarTradingView(),
            Config.routes.auth: (context) => AuthView(),
          },
        ),
      ),
    );
  }
}


