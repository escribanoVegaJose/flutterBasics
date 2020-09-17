import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //1. SilverApp sustituimos el contenido por un CustomScrollView
    /*
        SilverAppbar: Appbar con funcionadidades customizables. Integra un 
        ScrollView que permite ampliar o desampliar dicha zona.
      */
    //2. SilverApp, eliminamos el AppBar de la pantalla principal.
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 100,
          floating: false,
          pinned: false,
          snap: false,
          title: Text("sliverAppbar"),
          actions: [
            IconButton(
              icon: Icon(Icons.ac_unit),
            )
          ],
          bottom: PreferredSize(
              child: Icon(Icons.account_balance),
              preferredSize: Size.fromHeight(50)),
          flexibleSpace: FlexibleSpaceBar(
            title: Text("holi"),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
            ListTile(title: Text("item")),
          ]),
        )
      ],
    );
  }
}
