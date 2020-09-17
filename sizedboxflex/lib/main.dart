import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Container(color: Colors.red)
        ),
        Flexible(
          flex: 3,
          child: Container(color: Colors.blue)
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.green)
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.black)
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.grey)
        ),
      ],
    ));
  }
}
