import 'package:flutter/material.dart';
import 'mainWidgets/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget 
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      
      title: 'Flutter Demo',
      theme: ThemeData
      (
        primaryColor: Color(0xff1976d2), 
        accentColor: Color(0xff9e9e9e), 
        
        fontFamily: 'Georgia',

        textTheme: TextTheme
        (
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic), 
          body1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

        ),
      ),
      home: MyHomePage(title: 'Title'),
    );
  }
}

