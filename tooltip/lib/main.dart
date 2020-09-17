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
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Tooltip(
              message: ("icono que activa la alarma"),
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.access_time))),
          Tooltip(
              message: ("acceder a contactos"),
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.account_box))),
          Icon(Icons.all_inclusive),
        ],
      ),
    ));
  }
}
