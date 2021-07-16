import 'package:app_divisao/modules/home/models/dashboard_model.dart';
import 'package:app_divisao/shared/models/event_model.dart';

abstract class HomeRepository {
  Future<List<EventModel>> getEvents();
  Future<DashboardModel> getDashboard();
}
