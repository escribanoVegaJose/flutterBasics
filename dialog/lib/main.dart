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

enum options { YES, NO, MAYBE }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _optionSelectedString = "SimpleDialog";

  void _setOptionSelectedValue(String valueSelected) {
    setState(() {
      _optionSelectedString = valueSelected;
    });
  }

  Future<void> _showDialog() async {
    switch (await showDialog<options>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: Colors.grey,
            titlePadding: EdgeInsets.all(10),
            title: Text(
              "¿Te gusta comer?",
              style: TextStyle(color: Colors.white),
            ),
            children: [
              SimpleDialogOption(
                child: Text("Sí", style: TextStyle(color: Colors.white70)),
                onPressed: () => {Navigator.pop(context, options.YES)},
              ),
              SimpleDialogOption(
                child: Text("No", style: TextStyle(color: Colors.white70)),
                onPressed: () => Navigator.pop(context, options.NO),
              ),
              SimpleDialogOption(
                child: Text("Quizás", style: TextStyle(color: Colors.white70)),
                onPressed: () => Navigator.pop(context, options.MAYBE),
              ),
            ],
          );
        })) {
      case options.YES:
        _setOptionSelectedValue('Yes');
        ;

        break;

      case options.NO:
        _setOptionSelectedValue('No');
        break;

      case options.MAYBE:
        _setOptionSelectedValue('Maybe');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaisedButton(
              onPressed: _showDialog,
              child: Text(_optionSelectedString),
            ),
            RaisedButton(
              onPressed: () => showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Cuidado!"),
                    content: Text("¿Quieres salir de la app?"),
                    actions: [
                      FlatButton(
                        child: Text("Si"),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    ],
                  );
                },
              ),
              child: Text("AlertDialog"),
            ),
            Builder(
              builder: (BuildContext context) {
                return RaisedButton(
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.linked_camera),
                          Text("has accionado la cámara")
                        ],
                      ),
                    ));
                  },
                  child: Text("SnackBar"),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
