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
      body: Center(
        child: ButtonBar(
          children: [
            //FlatButton
            FlatButton(
              color: Colors.green,
              padding: EdgeInsets.all(15),
              splashColor: Colors.black,
              child: Text("Flatbutton"),
              onPressed: () {},
            ),
            //IconButton
            IconButton(
              icon: Icon(Icons.accessible_forward),
              onPressed: () {},
            ),
            //OutlineButton
            OutlineButton(
              highlightedBorderColor: Colors.blue,
              highlightColor: Colors.black,
              child: Text("OutlineButton"),
              onPressed: () {},
            ),
            //RaisedButton
            RaisedButton(
              onPressed: () {},
              child:
                  const Text('Raised Button', style: TextStyle(fontSize: 20)),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_alarms),
      ),
      //floatingButton.
    );
  }
}
