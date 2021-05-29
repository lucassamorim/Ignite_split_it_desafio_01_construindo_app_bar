import 'package:app_divisao/modules/login/login_controller.dart';
import 'package:app_divisao/modules/login/login_state.dart';
import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:app_divisao/modules/login/widgets/login_service.dart';
import 'package:flutter_test/flutter_test.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    return UserModel(email: "lucas.web.midia@gmail.com", id: "id");
  }
}

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(onUpdate: () {}, service: LoginServiceMock());
  });

  test("Testando o Google SingIn retornando sucesso", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.googleSignIn();
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });

  test("Testando o Google SingIn retornando Failure", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.googleSignIn();
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect(states.length, 2);
  });
}
