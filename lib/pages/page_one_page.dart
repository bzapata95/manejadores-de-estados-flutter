import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_app/models/user.dart';
import 'package:status_app/services/user_service.dart';

class PageOnePage extends StatelessWidget {
  const PageOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              userService.clearUser();
            },
          ),
        ],
      ),
      body: userService.existUser
          ? UserInformation(user: userService.user!)
          : Center(child: Text('No user')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc_outlined),
        onPressed: () {
          Navigator.pushNamed(context, 'page-two');
        },
      ),
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
            ...user.profesiones.map((e) => ListTile(
                  title: Text(e),
                ))
          ],
        ));
  }
}
