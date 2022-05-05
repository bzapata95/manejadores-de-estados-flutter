import 'package:flutter/material.dart';

import 'package:status_app/models/user.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get user => _user;
  bool get existUser => _user != null;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  void clearUser() {
    _user = null;
    notifyListeners();
  }

  void changeAge(int age) {
    _user!.edad = age;
    notifyListeners();
  }

  void addProfesion() {
    _user!.profesiones.add('Dart ${_user!.profesiones.length + 1}');
    notifyListeners();
  }
}
