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
  List <Color> listMyColors= [Colors.red,Colors.teal,Colors.black]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
     SafeArea(
    child: GridView.builder(
    itemCount: listMyColors.length ,
    scrollDirection: Axis.horizontal,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, 
      crossAxisSpacing: 10,
      mainAxisSpacing: 10, 
    ),
    itemBuilder: (context, int index) 
    {
      return Container(color: listMyColors[index]); 
    })
         
    ));
  }
}
