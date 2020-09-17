import 'package:flutter/material.dart';
import 'package:navigation_structure/widgetSettings.dart';

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
  //1.BottomNav. indice del selector del bottomNavigation.
  int _selectedIndex = 0;
  //2.BottomNav lista de opciones del bottomNavigation.
  static List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: inicio'),
    Text('Index 1: favoritos'),
    Text('Index 2: mis listas'),
    WidgetSettings()
  ];
  //3.BottomNav función que indica que guarda el valor del índice seleccionado
  void _selectedOptionInMyBottomNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //5. BottomNav elemento que se muestra actualmente en esta pantalla/widget/pantalla principal.
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      //1. Drawer, Implementación de drawer. Se define un menu lateral con cabecera y lista de items.
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Drawer cabecera',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensajes'),
            )
          ],
        ),
      ),

      //4.BottomNav Implementación de la navegación en el bottomNavigation.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Inicio')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favoritos')),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text('Mis listas')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Ajustes'))
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber,
        onTap: _selectedOptionInMyBottomNavigation,
      ),
    );
  }
}
