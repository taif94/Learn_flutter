import 'package:flutter/material.dart';

//void main() => runApp(new MaterialApp(routes: <String, WidgetBuilder>{
//  "/Detail": (BuildContext context) => new Detailpage(),
// "/About": (BuildContext context) => new Aboutpage(),
//  }, home: new Homepage()));

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, "/Detail");
      }),
      appBar: new AppBar(
        title: new Text("Homepage"),
      ),
      body: new Center(
        child: new Text(
          "مرحبا بكم في تطبيق فلاتر  ",
          style: new TextStyle(fontFamily: "Aref Ruqaa"),
        ),
      ),
    );
  }
}

class Detailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detailpage"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("Move to another page"),
            onPressed: () {
              Navigator.pushNamed(context, "/About");
            }),
      ),
    );
  }
}

class Aboutpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(" Aboutpage"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("Back to Detailpage"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
