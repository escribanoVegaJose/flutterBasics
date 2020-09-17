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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: <Widget>[
          //image
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image(
                height:150 ,
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
                image: AssetImage('assets/images/flutter-create-custom.jpg')),
          ),
          //icon
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 48,
          )
        ],
      )),
    );
  }
}
