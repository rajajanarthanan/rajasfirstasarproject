import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';


import 'package:rajas_first_asar_game/app/dependencies.dart';
import 'package:rajas_first_asar_game/app/global_exports.dart';
import 'package:rajas_first_asar_game/core/presentation/bloc/asar_bloc_bloc.dart';
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
    return MultiBlocProvider(
      /// Ability to inject multiple blocs and make them available throughout the widget tree
      providers: [BlocProvider<AsarBlocBloc>(create: (BuildContext context)=> AsarBlocBloc()),
      BlocProvider<AuthBloc>(create: (BuildContext context)=> AuthBloc())
      ],
      child: BlocConsumer<AsarBlocBloc,AsarBlocState>(
        listener: (context, state){}, 
        listenWhen: (previous, current)=> false,
        buildWhen: (previous, current) => false,
        builder: (context, state) =>         
        BlocListener<AuthBloc, AuthBlocState>(
            listenWhen: (previous, current) => (
             (current is LoggedIn) ||
             (previous is LoggedIn)
             ),
            listener: (context, state) {
              if (state is LoggedIn) {
                Get.offAllNamed(Config.routes.asarTv);
              } else {
                Get.offAllNamed(Config.routes.auth);
              }
            },
            child: GetMaterialApp(
              themeMode: ThemeMode.light,
              darkTheme: ThemeData.dark(),
              debugShowCheckedModeBanner: false,
              initialRoute: Config.routes.initialRoute,
              routes: {
                Config.routes.initialRoute: (context) => AuthView(),
                Config.routes.asarTv: (context) => AsarTradingView(),
                Config.routes.auth: (context) => AuthView(),
              },
            ),
          ),
      ),
    );
  }
}


