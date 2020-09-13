import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  var scaffoldkey = new GlobalKey<ScaffoldState>();

  showsnakbar() {
    var snackbar = new SnackBar(
        action: new SnackBarAction(label: "OK", onPressed: () {}),
        backgroundColor: Colors.greenAccent,
        duration: new Duration(seconds: 1),
        content: new Text(" SnackBar "));

    scaffoldkey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldkey,
      appBar: new AppBar(),
      body: new Center(
        child: new InkWell(
            onTap: () {
              showsnakbar();
            },
            child: new Text("Click to show SnackBar")),
      ),
    );
  }
}
