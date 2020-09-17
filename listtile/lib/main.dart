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

  bool selected=false; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView( 
        children: <Widget>[
        //ListTile con titulo. 
        Card(child: ListTile(title: Text("Titulo"))), 
        //ListTile con titulo y encabezado.
        Card(child: ListTile(
          leading: Icon(Icons.av_timer),
          title: Text("Titulo"))),

        //ListTile con titulo, encabezado, final.
        Card(child: ListTile(
          trailing: Icon(Icons.more_vert),
          leading: Icon(Icons.av_timer),
          title: Text("Titulo"))),

        //ListTile con titulo, encabezado, final y subtitulo.
        Card(child: ListTile
        (
          onLongPress: (){
              setState(() 
              {
                (!selected)?selected=true:selected=false; 
              });
          },
          selected: selected,
          subtitle: Text("Subtitulo, mi subtitulo es más laro que que pies mastextdsadodhoa me da igual la ortografia "),
          trailing: Icon(Icons.more_vert),
          leading: Icon(Icons.av_timer),
          isThreeLine: true,
          title: Text("Titulo"))),
          

      ],
      )
    );
  }
}
