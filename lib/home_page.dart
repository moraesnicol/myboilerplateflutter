import 'package:flutter/material.dart';
import 'package:helloworld/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(child: const Text('Que App Fdp')),
            backgroundColor: Colors.amber),
        body: Center(
            child: Switch(
          value: AppController.instance.isDartTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
            }),
      )
    );
  }
}
