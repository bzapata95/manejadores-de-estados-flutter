import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:status_app/controllers/user_controller.dart';
import 'package:status_app/models/user.dart';

class PageTwoPage extends StatelessWidget {
  const PageTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.find<UserController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              userCtrl.setUser(User(
                  nombre: 'Bryan', edad: 27, profesiones: ['Dart', 'Flutter']));
              Get.snackbar('Éxito', 'Usuario creado',
                  backgroundColor: Colors.white,
                  snackPosition: SnackPosition.BOTTOM,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                    ),
                  ]);
            },
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userCtrl.changeAge(40);
            },
            child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userCtrl.addProfession('React ${userCtrl.numberProfessions + 1}');
            },
            child:
                Text('Añadir profesión', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child: Text('Cambiar tema', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
