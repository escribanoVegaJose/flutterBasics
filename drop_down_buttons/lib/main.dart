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

enum SelectorOptions { option1, option2, option3, option4 }

class _MyHomePageState extends State<MyHomePage> {
  //1. Crear una variable donde indicara el valor actual de nuestro DropDwonButton.
  String dropdwoncurrentvalue = 'Opción 1';
  SelectorOptions _selectorOptions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        DropdownButton(
            //2. rellenamos la lista de opcines a mostrar en el desplegable.
            items: <String>['Opción 1', 'Opción 2', 'Opción 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            //3. personalizar la vista
            icon: Icon(Icons.access_alarms),
            iconSize: 15,
            elevation: 16,
            underline: Container(
              height: 3,
              color: Colors.blue,
            ),
            style: TextStyle(color: Colors.black),
            //4. actualizar el valor que se ha escogido.
            value: dropdwoncurrentvalue,
            onChanged: (String valueIn) {
              setState(() {
                dropdwoncurrentvalue = valueIn;
              });
            }),
        PopupMenuButton<SelectorOptions>(
          onSelected: (SelectorOptions result) {
            setState(() {
              _selectorOptions = result;
            });
          },
          itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<SelectorOptions>>[
            const PopupMenuItem<SelectorOptions>(
              value: SelectorOptions.option1,
              child: Text('Option 1'),
            ),
            const PopupMenuItem<SelectorOptions>(
              value: SelectorOptions.option2,
              child: Text('Option 2'),
            ),
            const PopupMenuItem<SelectorOptions>(
              value: SelectorOptions.option3,
              child: Text('Option 3'),
            ),
            const PopupMenuItem<SelectorOptions>(
              value: SelectorOptions.option4,
              child: Text('Option 4'),
            ),
          ],
        )
      ],
    ));
  }
}
