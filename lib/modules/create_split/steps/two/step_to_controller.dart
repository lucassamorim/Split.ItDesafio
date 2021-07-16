import 'package:app_divisao/shared/models/friend_model.dart';
import 'package:app_divisao/shared/repositories/firebase_repository.dart';
import 'package:mobx/mobx.dart';

import '../../create_split_controller.dart';
part 'step_to_controller.g.dart';

class StepToController = _StepToControllerBase with _$StepToController;

abstract class _StepToControllerBase with Store {
  final CreateSplitController controller;
  final repository = FirebaseRepository();
  _StepToControllerBase({required this.controller}) {
    autorun((_) => {controller.setSelectedFriends(_selectedFriends)});
  }

  @observable
  List<FriendModel> _friends = [];

  @observable
  String search = "";

  @observable
  ObservableList<FriendModel> _selectedFriends = ObservableList.of([]);

  List<FriendModel> get selectedFriends => _selectedFriends;

  @action
  void onChange(String value) {
    search = value;
  }

  @action
  void addFriends(FriendModel friend) {
    _selectedFriends.add(friend);
  }

  @action
  void removeFriends(FriendModel friend) {
    _selectedFriends.remove(friend);
  }

  @computed
  List<FriendModel> get items {
    if (_selectedFriends.isNotEmpty) {
      final filtredList = _friends.where((element) {
        final contains = element.name
            .toString()
            .toLowerCase()
            .contains(search.toLowerCase());
        final notAdd = !_selectedFriends.contains(element);
        return contains && notAdd;
      }).toList();
      return filtredList;
    }
    if (search.isEmpty) {
      return _friends;
    } else {
      final filtredList = _friends
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(search.toLowerCase()))
          .toList();
      return filtredList;
    }
  }

  @action
  Future<void> getFrends() async {
    List<Map<String, dynamic>> response = [];
    response = await this.repository.get("/friends");
    _friends = response.map((e) => FriendModel.fromMap(e)).toList();
  }
}
