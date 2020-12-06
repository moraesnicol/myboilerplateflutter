import 'package:flutter/material.dart';

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
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
          title: Center(child: const Text('Que App Fdp')),
          backgroundColor: Colors.amber
          ),
     
      body: Center(
          child: GestureDetector(
        child: Text('Contador: $count',
          style: TextStyle(fontSize: 40),
          ),
        onDoubleTap: () {
          setState(() {
            count++;

          });
        },
      )),
       floatingActionButton: FloatingActionButton(
      
        child: Icon(Icons.add_a_photo_outlined), 
        splashColor: Colors.redAccent, 
        onPressed: () {
          setState(() {
            count++;

          });
        
      },
      ),
    );
  }
}
