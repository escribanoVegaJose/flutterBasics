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
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep >= 3) return;
                  setState(() {
                    _currentStep++;
                  });
                },
                onStepCancel: () {
                  if (_currentStep <= 0) return;

                  setState(() {
                    _currentStep--;
                  });
                },
                steps: [
          Step(
              title: Text("introducción"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("diseño"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("desarrollo"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
          Step(
              title: Text("test"),
              content: SizedBox(
                width: 110,
                height: 110,
              )),
        ])));
  }
}
