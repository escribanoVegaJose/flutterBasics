import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//primero definimos la clase de cada elemento de la tabla.
class ComidaItem {
  final String name;
  final int calories;

  ComidaItem(this.name, this.calories);
}

//definimos los valores de la lista.
final List<ComidaItem> _comidasList = [
  ComidaItem("Yogurt", 87),
  ComidaItem("Hamburguesa del macdonals", 1500),
  ComidaItem("Hamburguesa del BurgerKing", 1200),
  ComidaItem("Sandia(1kg)", 100),
  ComidaItem("Galleatas (100gr)", 300),
];

//widget de nuestra tabla.
Widget _buildTable({bool sortAscending = true}) {
  return DataTable(
    sortColumnIndex: 0,
    sortAscending: sortAscending,
    onSelectAll: (bool value) {},
    columns: <DataColumn>[
      DataColumn(
        label: Text('Nombre'),
        tooltip: 'Nombre de la comida',
      ),
      DataColumn(
        label: const Text('Calorias'),
        tooltip: 'Calorias',
        numeric: true,
        onSort: (int columnIndex, bool ascending) {},
      ),
    ],
    rows: _comidasList.map<DataRow>((ComidaItem comidaItem) {
      return DataRow(
        key: Key(comidaItem.name),
        onSelectChanged: (bool selected) {},
        cells: <DataCell>[
          DataCell(
            Text(comidaItem.name),
          ),
          DataCell(
            Text('${comidaItem.calories}'),
            showEditIcon: true,
            onTap: () {},
          ),
        ],
      );
    }).toList(),
  );
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
        body: Center(
      child: _buildTable(sortAscending: true),
    ));
  }
}
