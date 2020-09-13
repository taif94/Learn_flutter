import 'package:flutter/material.dart';

class Pictures extends StatefulWidget {
  @override
  _PicturesState createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Photos"),
        ),
        body: ListView(
          children: <Widget>[
            Image(image: AssetImage("assets/pics/th.jpg")),
            Image(image: AssetImage("assets/pics/th (1).jpg")),
            Image(
                image: NetworkImage(
                    "https://tse1.mm.bing.net/th?id=OIP.g7vToxOAkz-rfjtpHwgApgHaE5&pid=Api&P=0&w=248&h=165"))
          ],
        ),
      ),
    );
  }
}
