import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:status_app/models/user.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const InitialUserState()) {
    on<ActivateUserEvent>((event, emit) {
      emit(AddUserState(event.user));
    });

    on<ChangeUserAgeEvent>((event, emit) {
      if (!state.existUser) return;
      final newUser = state.user!.copyWith(edad: event.age);
      emit(AddUserState(newUser));
    });

    on<AddProfessionToUserEvent>((event, emit) {
      if (!state.existUser) return;
      final newUser = state.user!.copyWith(profesiones: [
        ...state.user!.profesiones,
        '${event.profession} ${state.user!.profesiones.length + 1}'
      ]);
      emit(AddUserState(newUser));
    });

    on<DeleteUserEvent>((event, emit) {
      emit(const DeleteUserState());
    });
  }
}
