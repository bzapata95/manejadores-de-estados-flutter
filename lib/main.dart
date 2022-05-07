import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:status_app/pages/page_one_page.dart';
import 'package:status_app/pages/page_two.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page-one',
      // routes: {
      //   'page-one': (context) => const PageOnePage(),
      //   'page-two': (context) => const PageTwoPage(),
      // },
      getPages: [
        GetPage(name: '/page-one', page: () => const PageOnePage()),
        GetPage(name: '/page-two', page: () => const PageTwoPage()),
      ],
    );
  }
}
