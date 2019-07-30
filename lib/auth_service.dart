import 'dart:math';

class AuthService {
  Future<bool> login() async {
    return Future<bool>.delayed(Duration(seconds: 2), () => Random().nextBool());
  }

  Future<void> logout() async {
    return Future<void>.delayed(Duration(seconds: 1));
  }
}