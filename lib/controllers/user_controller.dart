import 'package:get/get.dart';
import 'package:status_app/models/user.dart';

class UserController extends GetxController {
  var existUser = false.obs;
  var user = User().obs;

  int get numberProfessions => user.value.profesiones!.length;

  void setUser(User pUser) {
    user.value = pUser;
    existUser.value = true;
  }

  void changeAge(int age) {
    user.update((val) {
      val!.edad = age;
    });
  }

  void addProfession(String profession) {
    user.update((val) {
      val!.profesiones = [...val.profesiones!, profession];
    });
  }
}
