part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool existUser;
  final User? user;

  const UserState({this.existUser = false, this.user});
}

class InitialUserState extends UserState {
  const InitialUserState() : super(existUser: false, user: null);
}

class AddUserState extends UserState {
  final User newUser;
  const AddUserState(this.newUser) : super(existUser: true, user: newUser);
}

class DeleteUserState extends UserState {
  const DeleteUserState() : super(existUser: false, user: null);
}
