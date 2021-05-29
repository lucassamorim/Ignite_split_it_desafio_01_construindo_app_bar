import 'widgets/login_service.dart';
import 'package:flutter/cupertino.dart';
import 'login_state.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  final LoginService service;
  Function(LoginState state)? onChange;
  LoginController({
    required this.onUpdate,
    required this.service,
  });

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      update();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
      update();
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      update();
    }
  }

  void update() {
    onUpdate();
    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}
