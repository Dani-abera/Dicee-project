import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numDice1 = 1;
  int numDice2 = 1;

  void change1() {
    setState(() {
      numDice1 = Random().nextInt(6) + 1;
      numDice2 = Random().nextInt(6) + 1;
      print('The left Button is pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextButton(
              onPressed: () {
                change1();
              },
              child: Image.asset('images/dice$numDice1.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: TextButton(
                onPressed: () {
                  change1();
                },
                child: Image.asset('images/dice$numDice2.png')),
          )
        ],
      ),
    );
  }
}
