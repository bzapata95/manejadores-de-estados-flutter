import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:status_app/bloc/user/user_cubit.dart';

import 'package:status_app/pages/page_one_page.dart';
import 'package:status_app/pages/page_two.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'page-one',
        routes: {
          'page-one': (context) => PageOnePage(),
          'page-two': (context) => PageTwoPage(),
        },
      ),
    );
  }
}
