import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:status_app/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(User user) {
    emit(UserActive(user));
  }

  void changeAge(int age) {
    final currentState = state;
    if (currentState is UserActive) {
      final newUser = currentState.user.copyWith(edad: age);
      emit(UserActive(newUser));
    }
  }

  void addProfession() {
    final currentState = state;
    if (currentState is UserActive) {
      final newUser = currentState.user.copyWith(profesiones: [
        ...currentState.user.profesiones,
        'Profesión ${currentState.user.profesiones.length + 1}'
      ]);
      emit(UserActive(newUser));
    }
  }
}
