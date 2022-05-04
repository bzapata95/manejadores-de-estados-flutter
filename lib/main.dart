import 'package:flutter/material.dart';
import 'package:status_app/pages/page_one_page.dart';
import 'package:status_app/pages/page_two.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page-one',
      routes: {
        'page-one': (context) => PageOnePage(),
        'page-two': (context) => PageTwoPage(),
      },
    );
  }
}
