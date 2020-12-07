import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();




  
}

class _LoginPageState extends State<LoginPage> {
  String email = 'moraesnicol@gmail.com';
  String password = 'abc';

  Widget _body() {
    return SingleChildScrollView(
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
                  border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(const Radius.circular(20))
                  ),
                  fillColor: Colors.white, filled: true,
                  
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
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(20))
                  ),
                  fillColor: Colors.white, filled: true,
                  
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.blue[800])),
                        highlightElevation: 100,
                        highlightColor: Colors.green,
                        color: Colors.black,
                        textColor: Colors.white,
                      onPressed: () {
                        if (email == 'moraesnicol@gmail.com' &&
                            password == 'abc') {
                          Navigator.of(context).pushReplacementNamed('/home');
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
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blue[800])),
                    highlightElevation: 100,
                    highlightColor: Colors.amber,
                    color: Colors.black,
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
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.blue[800])),
                  highlightElevation: 100,
                  highlightColor: Colors.blueAccent,
                  color: Colors.black26,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text('Registro'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
        
          body: Stack(  
          

          children: [
           SizedBox(
             height: MediaQuery.of(context).size.height,
             child: Image.asset('assets/images/2.gif',
             fit: BoxFit.cover,
              )
             ),
              Container(
                color: Colors.black.withOpacity(0.3),
              ),
            _body(),
          ],
        ));
  }
}
