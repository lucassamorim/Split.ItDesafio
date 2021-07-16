import 'package:app_divisao/modules/home/home_controller.dart';
import 'package:app_divisao/modules/home/home_state.dart';
import 'package:app_divisao/modules/home/repositories/home_repository.dart';
import 'package:app_divisao/shared/models/event_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;

import 'package:mocktail/mocktail.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late HomeController controller;
  late HomeRepository repository;
  setUp(() {
    repository = HomeRepositoryMock();
    controller = HomeController(repository: repository);
  });

  test("Testando GetEvents sucesso", () async {
    expect(controller.state, isInstanceOf<HomeStateEmpty>());
    final states = <HomeState>[];
    mobx.autorun((_) {});
    when(repository.getEvents).thenAnswer((_) async => [
          EventModel(
              title: "title", created: DateTime.now(), value: 45, people: 5)
        ]);
    await controller.getEvents();
    expect(states[0], isInstanceOf<HomeStateEmpty>());
    expect(states[1], isInstanceOf<HomeStateLoading>());
    expect(states[2], isInstanceOf<HomeStateSucesso>());
    expect(states.length, 2);
  });
}
