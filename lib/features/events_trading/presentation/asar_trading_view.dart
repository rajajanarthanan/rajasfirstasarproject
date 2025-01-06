import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/bloc/auth_bloc_bloc.dart';

class AsarTradingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            authBloc.add(const AuthBlocEvent.logout());
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
