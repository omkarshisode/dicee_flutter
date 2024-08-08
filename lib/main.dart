import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              'Dicee',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Dicee(),
      ),
    );
  }
}

class Dicee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                print("Left button got pressed");
              },
              child: Image.asset('images/dice1.png'),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                InkWell(onTap: () {
                  print("Right button got pressed");
                }, child: Image.asset('images/dice1.png')),
          ))
        ],
      ),
    );
  }
}

void changeImage(){
  print("Image Changed");
}


