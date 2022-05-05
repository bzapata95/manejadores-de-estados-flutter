import 'package:flutter/material.dart';
import 'package:status_app/models/user.dart';
import 'package:status_app/services/user_service.dart';

class PageTwoPage extends StatelessWidget {
  const PageTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            return snapshot.hasData
                ? Text('${snapshot.data!.nombre}')
                : Text('No hay información');
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              userService.setUser(User(
                  nombre: 'Bryan', edad: 27, profesiones: ['Dart', 'Flutter']));
            },
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userService.changeAge(30);
            },
            child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {},
            child:
                Text('Añadir profesión', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
