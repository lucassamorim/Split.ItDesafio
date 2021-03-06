// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_split_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateSplitController on _CreateSplitController, Store {
  Computed<bool>? _$enableNavigateButtonComputed;

  @override
  bool get enableNavigateButton => (_$enableNavigateButtonComputed ??=
          Computed<bool>(() => super.enableNavigateButton,
              name: '_CreateSplitController.enableNavigateButton'))
      .value;

  final _$currentPageAtom = Atom(name: '_CreateSplitController.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$eventNameAtom = Atom(name: '_CreateSplitController.eventName');

  @override
  String get eventName {
    _$eventNameAtom.reportRead();
    return super.eventName;
  }

  @override
  set eventName(String value) {
    _$eventNameAtom.reportWrite(value, super.eventName, () {
      super.eventName = value;
    });
  }

  final _$selectedFriendsAtom =
      Atom(name: '_CreateSplitController.selectedFriends');

  @override
  List<FriendModel> get selectedFriends {
    _$selectedFriendsAtom.reportRead();
    return super.selectedFriends;
  }

  @override
  set selectedFriends(List<FriendModel> value) {
    _$selectedFriendsAtom.reportWrite(value, super.selectedFriends, () {
      super.selectedFriends = value;
    });
  }

  final _$_CreateSplitControllerActionController =
      ActionController(name: '_CreateSplitController');

  @override
  void nextPage() {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void backPage() {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.backPage');
    try {
      return super.backPage();
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedFriends(List<FriendModel> list) {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.setSelectedFriends');
    try {
      return super.setSelectedFriends(list);
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEventName(String name) {
    final _$actionInfo = _$_CreateSplitControllerActionController.startAction(
        name: '_CreateSplitController.setEventName');
    try {
      return super.setEventName(name);
    } finally {
      _$_CreateSplitControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
eventName: ${eventName},
selectedFriends: ${selectedFriends},
enableNavigateButton: ${enableNavigateButton}
    ''';
  }
}
