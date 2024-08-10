import 'dart:math';

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

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      rightDiceNumber = getRandomNumber();
      leftDiceNumber = getRandomNumber();
    });
  }

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
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ))
        ],
      ),
    );
  }
}

// get the random in range of 1 to 6
int getRandomNumber() {
  var random = Random();
  return random.nextInt(6) + 1;
}
