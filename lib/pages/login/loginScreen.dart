import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authentication_service.dart';
//import 'package:auth_buttons/auth_buttons.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            },
            child: Text("Sign in"),
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signUp(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            },
            child: Text("register"),
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signUp(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            },
            child: Text("register"),
          ),
          //  RaisedButton(
          //       onPressed: () {
          //   //     Navigator.push(
          //         context,
          //           MaterialPageRoute(builder: (context) => RegisterPage()),
          //   );
          //       },
          //        child: Text("Register"),
          //      ),
          //        GoogleAuthButton(
          //        onPressed: () {
          //         context.read<AuthenticationService>().signInWithGoogle();
          //     },
          //    darkMode: true,
          //),
        ],
      ),
    );
  }
}
