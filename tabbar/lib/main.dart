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
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Mi demo de TabBars"),
              bottom: TabBar(
                tabs: [
                  Tab(text: "noticias"),
                  Tab(text: "favoritos"),
                  Tab(text: "contactos"),
                  Tab(text: "otros")
                ],
              ),
            ),
            body: TabBarView(children: [
              Text("noticias"),
              Text("favoritos"),
              Text("contactos"),
              Text("otros")
            ])));
  }
}
