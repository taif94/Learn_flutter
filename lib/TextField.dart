import 'package:flutter/material.dart';

class Controler extends StatefulWidget {
  @override
  _ControlerState createState() => _ControlerState();
}

class _ControlerState extends State<Controler> {
  final usernamecontroler = new TextEditingController();
  var userName = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Flutter Course")),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new TextField(
              controller: usernamecontroler,
              onChanged: (txt) {
                setState(() {
                  userName = usernamecontroler.text;
                });
              },
            ),
            new InkWell(
              child: new Icon(Icons.edit),
              onTap: () {
                setState(() {
                  userName = usernamecontroler.text;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
