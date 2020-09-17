import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nav/WidgetArguments.dart';

class SecondPage extends StatelessWidget 
{

  @override
  Widget build(BuildContext context) 
  {
    final WidgetArguments arguments= ModalRoute.of(context).settings.arguments; 
    return Scaffold(
      appBar: AppBar(title: Text(arguments.tittle),),
      body: Center(
        child: RaisedButton(child: Text('To home from ${arguments.num}'),
        onPressed: ()
        {
            //Vamos a la pantalla principal. 
            Navigator.pop(context); 

        },),
      ),
      
    );
  }
}