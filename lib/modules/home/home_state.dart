import 'package:app_divisao/shared/models/event_model.dart';

abstract class HomeState {}

class HomeStateEmpty extends HomeState {}

class HomeStateSucesso extends HomeState {
  List<EventModel> events;
  HomeStateSucesso({
    required this.events,
  });
}

class HomeStateFalha extends HomeState {
  String message;
  HomeStateFalha({
    required this.message,
  });
}

class HomeStateLoading extends HomeState {}
