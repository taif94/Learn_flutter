import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> PL = ["Kotlen", "Dart", "Java ", "C++", "Python"];
  void getText() {
    setState(() {
      plText = PL[new Random().nextInt(PL.length)];
    });
  }

  String plText = "";
  void inSize() {
    setState(() {
      txtsize++;
      myTixtStyle = new TextStyle(fontSize: txtsize);
    });
  }

  static var txtsize = 15.0;
  var myTixtStyle = new TextStyle(fontSize: 35.0);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new InkWell(
                onTap: inSize,
                child: new Icon(
                  Icons.add,
                  size: 40.0,
                )),
            new Text(
              plText,
              style: myTixtStyle,
            ),
            new RaisedButton(
                child: new Text(
                  "click",
                  style: myTixtStyle,
                ),
                onPressed: getText)
          ],
        ),
      ),
      bottomNavigationBar: new BottomAppBar(
        color: Colors.greenAccent,
        child: new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text(
                "Copyright",
                style: myTixtStyle,
              ),
              new Icon(
                Icons.copyright,
                color: Colors.black12,
              ),
              new Text(
                "2020",
                style: myTixtStyle,
              )
            ],
          ),
        ),
      ),
      appBar: new AppBar(
        title: new Text("Random App"),
      ),
    );
  }
}
