import 'package:flutter/material.dart';
import 'package:helloworld/app_controller.dart';
import 'package:helloworld/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
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
          home: LoginPage(),
        );
      },
    );
  }
}
