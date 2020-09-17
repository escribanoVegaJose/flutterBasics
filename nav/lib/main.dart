import 'package:flutter/material.dart';
import 'package:nav/WidgetArguments.dart';
import 'SecondPage.dart';

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
        initialRoute: '/',
        routes: {
          '/': (context) => FirstPage(),
          '/secondPage': (context) => SecondPage()
        });
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('To page 2'),
          onPressed: () {
            //Vamos a la segunda pantalla team.
            Navigator.pushNamed(context, '/secondPage',
                arguments: WidgetArguments("Pasamos a la screen 2", 23));
          },
        ),
      ),
    );
  }
}
