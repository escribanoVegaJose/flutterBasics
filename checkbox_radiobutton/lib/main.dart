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

enum Cars { ferrari, lamborgini }

class _MyHomePageState extends State<MyHomePage> {
  //1. crearnos la variable que identifique el estado actual.
  bool _isActived = false;
  bool _isActivedTile = true;
  Cars _carSelected = Cars.ferrari;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Checkbox(
            value: _isActived,
            onChanged: (bool valueIn) {
              setState(() {
                _isActived = valueIn;
              });
            },
          ),
          CheckboxListTile(
              title: Text("Titulo"),
              value: _isActivedTile,
              onChanged: (bool valueIn) {
                setState(() {
                  _isActivedTile = valueIn;
                });
              }),
          ListTile(
            title: Text("Ferrari"),
            leading: Radio(
                value: Cars.ferrari,
                groupValue: _carSelected,
                onChanged: (Cars carSelected) {
                  setState(() {
                    _carSelected = carSelected;
                  });
                }),
          ),
          ListTile(
            title: Text("Lamborgini"),
            leading: Radio(
                value: Cars.lamborgini,
                groupValue: _carSelected,
                onChanged: (Cars carSelected) {
                  setState(() {
                    _carSelected = carSelected;
                  });
                }),
          ),
        ]));
  }
}
