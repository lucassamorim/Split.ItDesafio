// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_to_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepToController on _StepToControllerBase, Store {
  Computed<List<FriendModel>>? _$itemsComputed;

  @override
  List<FriendModel> get items =>
      (_$itemsComputed ??= Computed<List<FriendModel>>(() => super.items,
              name: '_StepToControllerBase.items'))
          .value;

  final _$_friendsAtom = Atom(name: '_StepToControllerBase._friends');

  @override
  List<FriendModel> get _friends {
    _$_friendsAtom.reportRead();
    return super._friends;
  }

  @override
  set _friends(List<FriendModel> value) {
    _$_friendsAtom.reportWrite(value, super._friends, () {
      super._friends = value;
    });
  }

  final _$searchAtom = Atom(name: '_StepToControllerBase.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_selectedFriendsAtom =
      Atom(name: '_StepToControllerBase._selectedFriends');

  @override
  ObservableList<FriendModel> get _selectedFriends {
    _$_selectedFriendsAtom.reportRead();
    return super._selectedFriends;
  }

  @override
  set _selectedFriends(ObservableList<FriendModel> value) {
    _$_selectedFriendsAtom.reportWrite(value, super._selectedFriends, () {
      super._selectedFriends = value;
    });
  }

  final _$getFrendsAsyncAction = AsyncAction('_StepToControllerBase.getFrends');

  @override
  Future<void> getFrends() {
    return _$getFrendsAsyncAction.run(() => super.getFrends());
  }

  final _$_StepToControllerBaseActionController =
      ActionController(name: '_StepToControllerBase');

  @override
  void onChange(String value) {
    final _$actionInfo = _$_StepToControllerBaseActionController.startAction(
        name: '_StepToControllerBase.onChange');
    try {
      return super.onChange(value);
    } finally {
      _$_StepToControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addFriends(FriendModel friend) {
    final _$actionInfo = _$_StepToControllerBaseActionController.startAction(
        name: '_StepToControllerBase.addFriends');
    try {
      return super.addFriends(friend);
    } finally {
      _$_StepToControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFriends(FriendModel friend) {
    final _$actionInfo = _$_StepToControllerBaseActionController.startAction(
        name: '_StepToControllerBase.removeFriends');
    try {
      return super.removeFriends(friend);
    } finally {
      _$_StepToControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
items: ${items}
    ''';
  }
}
