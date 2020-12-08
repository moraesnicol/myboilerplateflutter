import 'package:flutter/material.dart';
import 'package:helloworld/widgets/app_darktheme.dart';

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
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset('assets/images/me.jpg')),
              accountName: Text('Gabriel Nicol'),
              accountEmail: Text('moraesnicol@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home_rounded),
              tileColor: Colors.deepPurple,
              title: Text('Bem Vindo(a)'),
              subtitle: Text('Meu Perfil'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              tileColor: Colors.deepPurple,
              title: Text('Logout'),
              subtitle: Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
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

