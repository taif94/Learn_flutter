import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          color: Colors.purple,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blueGrey, width: 05.0),
              borderRadius: BorderRadius.circular(20.0)),
          backgroundColor: Colors.purple,
          onPressed: () {
            print("test");
          }),
      body: Column(children: <Widget>[
        TextField(),
        Center(
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            foregroundColor: Colors.green,
            elevation: 0.0,
            mini: true,
            tooltip: "hello flutter",
            onPressed: () {
              print("test");
            },
            child: Icon(Icons.refresh),
          ),
        ),
      ]),
    );
  }
}
