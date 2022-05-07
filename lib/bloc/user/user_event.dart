part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUserEvent extends UserEvent {
  final User user;

  ActivateUserEvent(this.user);
}

class ChangeUserAgeEvent extends UserEvent {
  final int age;

  ChangeUserAgeEvent(this.age);
}

class AddProfessionToUserEvent extends UserEvent {
  final String profession;
  AddProfessionToUserEvent(this.profession);
}

class DeleteUserEvent extends UserEvent {}
