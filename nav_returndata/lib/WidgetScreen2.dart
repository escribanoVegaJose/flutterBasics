/*
  4. Implemenatamos la lógica de WidgetScreen2. 
*/
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WidgetScreen2')),
      body: Center(
        child: RaisedButton(
          child: Text('Botón valor'),
          onPressed: () {
            // El botón valor devuelve al _navigateAndDisplayValue el texto 'valor'
            Navigator.pop(
                context, 'mi valor desde la pantalla/widget número dos');
          },
        ),
      ),
    );
  }
}
