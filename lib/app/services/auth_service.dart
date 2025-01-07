import 'package:rajas_first_asar_game/features/auth/domain/entities/user.dart';

class AuthService {
  User? user;
  AuthService();
  void setUser(User user) => this.user = user;
}