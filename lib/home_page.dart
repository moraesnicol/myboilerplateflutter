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
        drawer: Drawer(
            child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home_rounded),
              tileColor: Colors.deepPurple,
              title: Text('Bem Vindo(a)'),
              subtitle: Text('Meu Perfil'),
              onTap: () {
                print('home');
              },
            )
          ],
        )),
        appBar: AppBar(
          title: Center(child: const Text('@objetivopolicialbr')),
          backgroundColor: Colors.amber,
          actions: [
            CustomSwitcher(),
          ],
        ),
        body: Container());
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
