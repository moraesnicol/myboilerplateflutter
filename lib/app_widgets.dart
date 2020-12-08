import 'package:flutter/material.dart';
import 'package:helloworld/widgets/app_darktheme.dart';
import 'package:helloworld/pages/login_page.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                primarySwatch: Colors.cyan,
                brightness: AppController.instance.isDartTheme
                    ? Brightness.dark
                    : Brightness.light,
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => LoginPage(),
                '/home': (context) => HomePage(),
              });
        });
  }
}
