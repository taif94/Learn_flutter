import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  var tl = [
    " arabic",
    "english",
    " spanish",
    "french",
    " german",
    "italian",
    "korean",
    "turkish",
    "afrikaans",
    "chinese"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: tl.length,
        itemBuilder: (context, i) {
          return Card(
            child: Container(
              height: 100.0,
              child: Center(
                child: Text(
                  tl[i],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
