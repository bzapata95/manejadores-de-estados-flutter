import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:status_app/bloc/user/user_bloc.dart';
import 'package:status_app/models/user.dart';

class PageTwoPage extends StatelessWidget {
  const PageTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context);
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
              final newUser =
                  User(nombre: 'Bryan', edad: 27, profesiones: ['Programador']);
              userBloc.add(ActivateUserEvent(newUser));
            },
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userBloc.add(ChangeUserAgeEvent(40));
            },
            child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userBloc.add(AddProfessionToUserEvent('Programador'));
            },
            child:
                Text('Añadir profesión', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
