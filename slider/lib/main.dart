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
  double _currentSliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Slider(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              label: _currentSliderValue.round().toString(),
              onChanged: (double valueIn) {
                setState(() {
                  _currentSliderValue = valueIn;
                });
              }),
          Text("${_currentSliderValue.round()}")
        ],
      )),
    );
  }
}
