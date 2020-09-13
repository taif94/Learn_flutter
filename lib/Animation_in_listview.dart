import 'dart:async';

import 'package:flutter/material.dart';

class Any extends StatefulWidget {
  @override
  _AnyState createState() => _AnyState();
}

class _AnyState extends State<Any> {
  String image1 =
      "https://tse1.mm.bing.net/th?id=OIP.g7vToxOAkz-rfjtpHwgApgHaE5&pid=Api&P=0&w=246&h=164";

  String image2 =
      "https://c.pxhere.com/photos/c7/4a/tropical_beach_tropical_beach_water_ocean_sea_sand_sky-1052474.jpg!d";
  String image3 =
      "https://tse1.mm.bing.net/th?id=OIP.g7vToxOAkz-rfjtpHwgApgHaE5&pid=Api&P=0&w=248&h=165";

  bool loaded = true;
  final String _FAB = "FAB";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("MyApp"),
          leading: new Icon(
            Icons.portrait,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          heroTag: _FAB,
          backgroundColor: Colors.deepPurpleAccent,
          onPressed: () {
            setState(() {
              loaded = true;
            });
            Timer(Duration(seconds: 2), () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Hero(
                  tag: _FAB,
                  child: Center(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                );
              }));
            });
          },
          child: loaded ? Text("ok") : CircularProgressIndicator(),
        ),
        body: ListView(
          children: <Widget>[
            Listitem(
              image1: image1,
              id: "1",
            ),
            Listitem(
              image1: image2,
              id: "2",
            ),
            Listitem(
              image1: image3,
              id: "3",
            ),
          ],
        ));
  }
}

class Listitem extends StatelessWidget {
  final String id;
  const Listitem({Key key, @required this.image1, this.id}) : super(key: key);

  final String image1;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Flutter"),
      leading: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Anotherpage(
                        id: id,
                        imgURL: image1,
                      )));
        },
        child: Hero(
          tag: "TEST$id",
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(image1))),
          ),
        ),
      ),
    );
  }
}

class Anotherpage extends StatelessWidget {
  final String imgURL;
  final String id;

  const Anotherpage({Key key, this.imgURL, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
          tag: "TEST$id",
          child: Center(
            child: Container(
              child: Image.network(imgURL),
            ),
          )),
    );
  }
}
