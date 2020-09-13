import 'package:flutter/material.dart';

class Basicbar extends StatefulWidget {
  @override
  _BasicbarState createState() => _BasicbarState();
}

var _testtheme =
    new ThemeData(primarySwatch: Colors.amber, buttonColor: Colors.amber);

class _BasicbarState extends State<Basicbar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _testtheme,
      child: new Scaffold(
        floatingActionButton: new FloatingActionButton(
          onPressed: null,
          child: new Icon(Icons.add),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {},
            child: new Text("Clicke "),
          ),
        ),
        appBar: new AppBar(
          primary: true,
          centerTitle: true,
          // toolbarOpacity: 0.5,
          leading: new Icon(Icons.home),
          title: new Text("App Bar Demo"),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[new Icon(Icons.star), new Icon(Icons.more)],
        ),
      ),
    );
  }
}
