import 'package:flutter/material.dart';

class Dismiss extends StatefulWidget {
  @override
  _DismissState createState() => _DismissState();
}

class _DismissState extends State<Dismiss> {
  var list = List.generate(500, (i) => " Flitter $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: list.map((item) {
          return Dismissible(
            direction: DismissDirection.startToEnd,
            movementDuration: Duration(seconds: 2),
            background: Container(
              color: Colors.red,
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                list.removeAt(list.indexOf(item));
              });
            },
            child: ListTile(
              leading: FlutterLogo(),
              title: Text(item),
            ),
            key: Key(item),
          );
        }).toList(),
      ),
    );
  }
}
