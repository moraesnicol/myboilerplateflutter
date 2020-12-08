import 'package:flutter/material.dart';
import 'package:helloworld/pages/home/home_page.dart';
import 'package:helloworld/services/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/gif.gif'),
              SizedBox(height: 30),
              TextField(
                onChanged: (text) {},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Digite seu login',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                onChanged: (text) {},
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Digite sua senha',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.amber)),
                      highlightElevation: 100,
                      highlightColor: Colors.green,
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      onPressed: () {
                   //     Navigator.of(context).push(MaterialPageRoute(
                   //         builder: (context) => HomePage()));
                      },
                      child: Text('Entrar'),
                    ),
                  ),
                  SizedBox(width: 65),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.amber)),
                    highlightElevation: 100,
                    highlightColor: Colors.amber,
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () async {
                      dynamic result = await _auth.signInAnon();
                      if (result == null) {
                        print('erro ao logar');
                      } else {
                        print('logado');
                        print('result');
                        Navigator.of(context).pushReplacementNamed('/home');
                      }
                    },
                    child: Text('Login Anônimo'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 240.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.amber)),
                  highlightElevation: 100,
                  highlightColor: Colors.blueAccent,
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text('Registro'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
