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
        appBar: AppBar(title: Text("textos")),
        body: Column(
          children: <Widget>[
            //1.Texto Standar donde podemos marcar un estilo definir un estilo.
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'texto prueba standar',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            //2.Texto enriquecido. Permite mostrar cadenas de texto con diferentes estilos.
            RichText(
              text: TextSpan(
                text: 'texto enriquecido ', 
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.normal, color: Colors.black), 
                children: <TextSpan>
                [
                  TextSpan(text: 'bold ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)), 
                  TextSpan(text: 'texto regular'), 

                ]
              ),
            )
          ],
        ));
  }
}
