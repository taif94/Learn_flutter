import 'package:flutter/material.dart';

class Listviewhorizontal extends StatefulWidget {
  @override
  _ListviewhorizontalState createState() => _ListviewhorizontalState();
}

class _ListviewhorizontalState extends State<Listviewhorizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://app.instarocket.co/Content/profile/2.png"),
                  radius: 50.0,
                  child: Text("TA"),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/pics/th.jpg"),
                  radius: 50.0,
                  child: Text("TA"),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://uk.images.search.yahoo.com/yhs/search;_ylt=AwrIDKmvBR1fJz8AwwF3Bwx.;_ylu=X3oDMTByZmVxM3N0BGNvbG8DaXIyBHBvcwMxBHZ0aWQDBHNlYwNzYw--?p=circle+avatar+image&fr=yhs-Lkry-newtab&hspart=Lkry&hsimp=yhs-newtab#id=439&iurl=http%3A%2F%2Fapp.instarocket.co%2FContent%2Fprofile%2F2.png&action=click"),
                  radius: 50.0,
                  child: Text("TA"),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
