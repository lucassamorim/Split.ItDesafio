import 'package:app_divisao/modules/home/models/dashboard_model.dart';
import 'package:app_divisao/modules/home/repositories/home_repository.dart';
import 'package:app_divisao/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:app_divisao/modules/home/widgets/app_bar/app_bar_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;

import 'package:mocktail/mocktail.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late AppBarController controller;
  late HomeRepository repository;
  setUp(() {
    repository = HomeRepositoryMock();
    controller = AppBarController(repository: repository);
  });

  test("Testando GetDashboard sucesso", () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());
    final states = <AppBarState>[];
    mobx.autorun((_) {
      states.add(controller.state);
    });
    when(repository.getDashboard)
        .thenAnswer((_) async => DashboardModel(send: 100, receive: 50));
    await controller.getDashboard();
    expect(states[0], isInstanceOf<AppBarStateLoading>());
    expect(states[1], isInstanceOf<AppBarStateSucesso>());
    expect(states.length, 2);
  });
}
