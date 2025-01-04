import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:logging/src/logger.dart';
import 'package:rajas_first_asar_game/core/domain/usecases/asar_use_case.dart';
import 'package:rajas_first_asar_game/features/auth/data/repositories/auth_repository.dart';
import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';

class Authenticate extends AsarUseCase<User, AuthRepository> {
  Authenticate() : super();
 
  @override
  Future<Stream<User?>> buildUseCaseStream(AuthRepository? params) {
    throw UnimplementedError();
  }


}