import 'package:app_divisao/modules/home/repositories/home_repository.dart';
import 'package:app_divisao/modules/home/repositories/home_repository_mock.dart';
import 'package:app_divisao/modules/home/widgets/app_bar/app_bar_state.dart';
import 'package:mobx/mobx.dart';

part 'app_bar_controller.g.dart';

class AppBarController = _AppBarControllerBase with _$AppBarController;

abstract class _AppBarControllerBase with Store {
  late HomeRepository repository;

  @observable
  AppBarState state = AppBarStateEmpty();

  _AppBarControllerBase({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  @action
  getDashboard() async {
    state = AppBarStateLoading();
    try {
      final response = await repository.getDashboard();
      state = AppBarStateSucesso(dashboard: response);
    } catch (e) {
      state = AppBarStateLoading();
    }
  }
}
