import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _progress = 0;
  int _duration = 1;

  void startTimer() {
    new Timer.periodic(Duration(seconds: _duration), (timer) {
      setState(() {
        if (_progress == _duration) {
          timer.cancel();
        } else {
          _progress += 0.2;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: RaisedButton(
              child: Text("arrancar el timer"),
              onPressed: () {
                setState(() {
                  _progress = 0;
                });
                startTimer();
              },
            ),
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.amber),
            strokeWidth: 10,
            value: _progress,
          ),
          SizedBox(
            height: 50,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.amber),
            minHeight: 10,
            value: _progress,
          )
        ],
      )),
    );
  }
}
