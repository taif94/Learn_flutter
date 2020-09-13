import 'package:flutter/material.dart';

class Scafdrawer extends StatefulWidget {
  @override
  _ScafdrawerState createState() => _ScafdrawerState();
}

class _ScafdrawerState extends State<Scafdrawer> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(child: new Text("Taif Ali")),
            new ListTile(
              selected: true,
              onTap: () {},
              leading: new Icon(Icons.info),
              trailing: new Switch(value: true, onChanged: null),
              title: new Text(" Flutter"),
              subtitle: new Text(" using Dart"),
            ),
            new ListTile(
              onTap: () {},
              leading: new Icon(Icons.info),
              trailing: new Switch(value: true, onChanged: null),
              title: new Text(" Kotlen"),
              subtitle: new Text(" using Dart"),
            ),
            new ListTile(
              onTap: () {},
              leading: new Icon(Icons.info),
              trailing: new Switch(value: true, onChanged: null),
              title: new Text(" Java"),
              subtitle: new Text(" using Dart"),
            ),
            new AboutListTile(
              aboutBoxChildren: <Widget>[new Text("just testing")],
              icon: new Icon(Icons.face),
              child: new Text("For My Flutter Course"),
            )
          ],
        ),
      ),
      appBar: new AppBar(title: new Text("Scaffold Demo")),
      backgroundColor: Colors.greenAccent,
      floatingActionButton: new FloatingActionButton(onPressed: null),
      bottomNavigationBar: new BottomAppBar(
        child: new Text("test"),
      ),
      persistentFooterButtons: <Widget>[
        new FlatButton(onPressed: null, child: new Text("one")),
        new FlatButton(onPressed: null, child: new Text("two")),
        new FlatButton(onPressed: null, child: new Text("three")),
      ],
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Card(
              child: new Container(
                height: 150.0,
                child: new TextField(
                  controller: new TextEditingController(),
                ),
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
            new Card(
              child: new Container(
                height: 150.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
