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

List<Item> _listaDeItems = generateItemasList(15);

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //scroll que contiene un expansionPanel.

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: _myWidgetExpansioPanel(),
      ),
    );
  }

  // Widget del expasión Panel.
// Widget del expasión Panel.
  Widget _myWidgetExpansioPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _listaDeItems[index].isExpanded = !isExpanded;
        });
      },
      children: _listaDeItems.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.title),
            );
          },
          body: ListTile(
              title: Text(item.contentExpandedTittle),
              subtitle: Text('Borramos el item de la lista'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _listaDeItems
                      .removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

// Info del expansionPanel.
//Item.
class Item {
  String contentExpandedTittle;
  String title;
  bool isExpanded;
  Item({this.contentExpandedTittle, this.title, this.isExpanded});
}

//Generador del item.
List<Item> generateItemasList(int sizeOftheList) {
  return List.generate(sizeOftheList, (int index) {
    return Item(
        contentExpandedTittle: 'Contenido de nuestro item $index',
        title: 'Item $index',
        isExpanded: false);
  });
}
