import 'package:dount_application/login_page.dart';
import 'package:dount_application/utils/routes.dart';
import 'package:flutter/material.dart';
import 'oader.dart';
import 'views/manu_page.dart';
import 'donut_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '${Routes.loginRoute}',
      routes: {
        Routes.loginRoute: (context) => LoginPage(),
        Routes.deshboard: (context) => Dashboard(),
        Routes.manupage: (context) => Manupage(),
        Routes.order: (context) => Order(),
      },
    );
  }
}
