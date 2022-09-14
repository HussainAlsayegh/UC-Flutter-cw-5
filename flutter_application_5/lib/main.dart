import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;

  var num2 = 2;

  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;

    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('حجرة ورقة مقص'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  play();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/i_$num1.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/i_$num2.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('player1'),
                  Container(
                    width: 50,
                  ),
                  Text('player2'),
                ],
              ),
              Container(
                height: 100,
              ),
              Container(
                width: 100,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    play();
                  },
                  child: Text('Play'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
