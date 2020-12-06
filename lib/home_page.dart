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
            backgroundColor: Colors.amber,
            actions: [
              CustomSwitcher(),
            ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,   //vertical
            crossAxisAlignment: CrossAxisAlignment.stretch, //horizontal
           
           
            children: [
              
              Text('Dark Mode'),
              CustomSwitcher(),
            

            ],
        ),
      )
    );
  }
}



class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
    });
  }
}
