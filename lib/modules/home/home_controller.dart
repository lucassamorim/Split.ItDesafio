import 'package:app_divisao/modules/home/home_state.dart';
import 'package:app_divisao/modules/home/repositories/home_repository.dart';
import 'package:app_divisao/modules/home/repositories/home_repository_mock.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  late HomeRepository repository;

  @observable
  HomeState state = HomeStateEmpty();

  _HomeControllerBase({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  @action
  getEvents() async {
    state = HomeStateLoading();
    try {
      final response = await repository.getEvents();
      state = HomeStateSucesso(events: response);
    } catch (e) {
      state = HomeStateFalha(message: e.toString());
    }
  }
}
