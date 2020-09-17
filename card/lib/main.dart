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
        body: Center(
            child: Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20)),       
      color: Colors.grey,
      margin: EdgeInsets.only(top: 25 ),
      shadowColor: Colors.green,
      elevation: 40,
      child: SizedBox(
          width: 200,
          height: 100,
          child: Text(
            "Mi Texto dentro del card.",
            style: TextStyle(color: Colors.white),
          )),
    )));
  }
}
