import 'package:flutter/material.dart';

class PageOnePage extends StatelessWidget {
  const PageOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: UserInformation(),
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
  const UserInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              title: Text('Nombre'),
            ),
            ListTile(
              title: Text('Edad'),
            ),
            Text(
              'Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              title: Text('Profesión 1'),
            ),
            ListTile(
              title: Text('Profesión 2'),
            ),
          ],
        ));
  }
}
