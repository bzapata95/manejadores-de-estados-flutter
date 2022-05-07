import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:status_app/bloc/user/user_cubit.dart';
import 'package:status_app/models/user.dart';

class PageOnePage extends StatelessWidget {
  const PageOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc_outlined),
        onPressed: () {
          Navigator.pushNamed(context, 'page-two');
        },
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (BuildContext context, state) {
        // if (state is UserInitial) {
        //   return Center(
        //     child: Text('No hay información del usuario'),
        //   );
        // } else if (state is UserActive) {
        //   return UserInformation(user: state.user);
        // }
        // return Container();

        switch (state.runtimeType) {
          case UserInitial:
            return const Center(
              child: Text('No hay información del usuario'),
            );
          case UserActive:
            return UserInformation(user: (state as UserActive).user);
          default:
            return Container();
        }
      },
    );
  }
}

class UserInformation extends StatelessWidget {
  final User user;

  const UserInformation({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              title: Text('Nombre: ${user.nombre}'),
            ),
            ListTile(
              title: Text('Edad: ${user.edad}'),
            ),
            Text(
              'Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ...user.profesiones.map((profesion) => ListTile(
                  title: Text(profesion),
                )),
          ],
        ));
  }
}
