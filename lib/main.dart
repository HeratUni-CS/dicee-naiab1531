import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return (runApp(MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int num = 1;
int num1 = 1;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Dice Game'),
          ),
          backgroundColor: Color.fromARGB(255, 199, 176, 171),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    child: Image.asset('images/dice-1.png'),
                    onPressed: () {
                      setState(() {
                        num = Random().nextInt(6) + 1;
                        num1 = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    child: Image.asset('images/dice-${num1}.png'),
                    onPressed: () {
                      setState(() {
                        num1 = Random().nextInt(6) + 1;
                        num = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
