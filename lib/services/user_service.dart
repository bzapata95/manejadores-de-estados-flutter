import 'dart:async';

import 'package:status_app/models/user.dart';

class _UserService {
  User? _user;

  final StreamController<User> _userStreamController =
      StreamController<User>.broadcast();

  User? get user => _user;
  bool get existUser => _user != null;

  Stream<User> get userStream => _userStreamController.stream;

  void setUser(User user) {
    _user = user;
    _userStreamController.add(user);
  }

  void changeAge(int age) {
    _user!.edad = age;
    _userStreamController.add(_user!);
  }

  dispose() {
    _userStreamController.close();
  }
}

final userService = _UserService();
