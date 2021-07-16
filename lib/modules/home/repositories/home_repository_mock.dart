import 'package:app_divisao/modules/home/models/dashboard_model.dart';
import 'package:app_divisao/modules/home/repositories/home_repository.dart';
import 'package:app_divisao/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(
      send: 100,
      receive: 50,
    );
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
          title: 'Churrasco', created: DateTime.now(), value: 50, people: 5),
      EventModel(
          title: 'Churrasco 2', created: DateTime.now(), value: -50, people: 6),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
      EventModel(
          title: 'Churrasco 3', created: DateTime.now(), value: 35, people: 3),
    ];
  }
}
