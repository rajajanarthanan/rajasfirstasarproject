import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rajas_first_asar_game/app/dependencies.dart';

void main() async{
  final GetIt getIt = GetIt.instance;
  await setupDependencies(getIt);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RajasFirstAsarGame',
      home: Text('Rajas First Asar Game'),
    );
  }
}

