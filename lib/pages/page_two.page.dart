import 'package:flutter/material.dart';

class PageTwoPage extends StatelessWidget {
  const PageTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {},
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {},
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
