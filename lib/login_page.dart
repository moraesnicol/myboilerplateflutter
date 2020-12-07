import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = 'moraesnicol@gmail.com';
  String password = 'abc';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Vanessa me ama?')),
          backgroundColor: Colors.amber,
        ),
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
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Digite seu login',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    onChanged: (text) {
                      password = text;
                    },
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
                            if (email == 'moraesnicol@gmail.com' &&
                                password == 'abc') {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) =>HomePage()));
                            } else {
                              print('login invalido filho da puta');
                            }
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
                        onPressed: () {},
                        child: Text('Esqueci minha senha'),
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
