import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:status_app/bloc/user/user_cubit.dart';
import 'package:status_app/models/user.dart';

class PageTwoPage extends StatelessWidget {
  const PageTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCubit = context.read<UserCubit>();
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
              userCubit.selectUser(User(
                  nombre: 'Bryan', edad: 27, profesiones: ['Dart', 'Flutter']));
            },
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userCubit.changeAge(30);
            },
            child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userCubit.addProfession();
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
