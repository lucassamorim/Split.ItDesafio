import 'package:app_divisao/modules/login/login_controller.dart';
import 'package:app_divisao/modules/login/login_state.dart';
import 'package:app_divisao/modules/login/models/user_model.dart';
import 'package:app_divisao/modules/login/widgets/login_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    return UserModel(email: "lucas.web.midia@gmail.com", id: "id");
  }
}

void main() {
  late LoginController controller;
  late LoginService service;
  setUp(() {
    service = LoginServiceMock();
    controller = LoginController(service: LoginServiceMock());
  });

  test("Testando o Google SingIn retornando sucesso", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    mobx.autorun((_) {
      states.add(controller.state);
    });
    controller.googleSignIn();
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateEmpty>());
    expect(states[1], isInstanceOf<LoginStateLoading>());
    expect(states[2], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });
}
