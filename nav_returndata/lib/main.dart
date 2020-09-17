import 'package:flutter/material.dart';
import 'package:nav_returndata/WidgetScreen2.dart';

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
    //2.añadir el widget del botón que lanza la siguiente pantalla.
    return Scaffold(body: Center(child: ButtonToScreenNumber2()));
  }
}

//1. Widget del botón que lanza la siguiente pantalla.
// widget
class ButtonToScreenNumber2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //botón
    return RaisedButton(
      child: Text('Vamos al widget 2 donde se devolvera un valor a esta pantalla'),
      onPressed: () {_navigateToScreen2AndWaitTheValue(context);},
    );
  }
}

//Método que lanza el widget 2 llamado WidgetScreen2() y espera el resultado de esta pantalla.
_navigateToScreen2AndWaitTheValue(BuildContext context) async {
  //3.creamos el wigdet en /libs
  //5.importamos el widget.
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => WidgetScreen2()));

//6. Mostramos el resultado proveniente de WidgetScreen2 con un snackBar o texto.
  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}
