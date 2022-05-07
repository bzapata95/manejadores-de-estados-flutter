import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:status_app/controllers/user_controller.dart';
import 'package:status_app/models/user.dart';
import 'package:status_app/pages/page_two.page.dart';

class PageOnePage extends StatelessWidget {
  const PageOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Obx(() => userCtrl.existUser.value
          ? UserInformation(user: userCtrl.user.value)
          : Center(
              child: Text('No user'),
            )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc_outlined),
        onPressed: () {
          // Navigator.pushNamed(context, 'page-two');
          Get.to(const PageTwoPage(), arguments: {'name': 'Bryan', 'age': 27});
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
            const Text(
              'General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListTile(
              title: Text('Nombre: ${user.nombre}'),
            ),
            ListTile(
              title: Text('Edad: ${user.edad}'),
            ),
            const Text(
              'Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ...user.profesiones!.map((profession) => ListTile(
                  title: Text(profession),
                )),
          ],
        ));
  }
}
