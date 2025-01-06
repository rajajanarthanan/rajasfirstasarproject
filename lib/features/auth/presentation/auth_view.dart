import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/bloc/auth_bloc_bloc.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final user = User(mobileNumber: '9025278909');
            authBloc.add(AuthBlocEvent.login(user));
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
