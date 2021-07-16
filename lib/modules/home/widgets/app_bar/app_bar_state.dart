import 'package:app_divisao/modules/home/models/dashboard_model.dart';

abstract class AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateSucesso extends AppBarState {
  DashboardModel dashboard;
  AppBarStateSucesso({
    required this.dashboard,
  });
}

class AppBarStateFalha extends AppBarState {
  String message;
  AppBarStateFalha({
    required this.message,
  });
}

class AppBarStateLoading extends AppBarState {}
