import 'package:flutter/material.dart';

class Sliv extends StatefulWidget {
  @override
  _SlivState createState() => _SlivState();
}

class _SlivState extends State<Sliv> {
  String image1 =
      "https://tse1.mm.bing.net/th?id=OIP.g7vToxOAkz-rfjtpHwgApgHaE5&pid=Api&P=0&w=246&h=164";
  String image2 =
      " https://ksassets.timeincuk.net/wp/uploads/sites/46/2019/08/GettyImages-1141306472.jpg";
  String image3 =
      " https://c.pxhere.com/photos/c7/4a/tropical_beach_tropical_beach_water_ocean_sea_sand_sky-1052474.jpg!d";
  String image4 =
      " https://tse1.mm.bing.net/th?id=OIP.NEoSIr_jOJ5IQY4O2AaH_wHaFN&pid=Api&P=0&w=219&h=155";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        reverse: true,
        slivers: <Widget>[
          Mybar(image4: image4),
          Mybar(image4: image2),
          Mybar(image4: image3),
          Mybar(image4: image1),

          SliverFillRemaining(
            child: Container(
              color: Colors.red,
            ),
          )

          //SliverFixedExtentList(
          //  delegate: SliverChildListDelegate([
          //   Card(
          //    color: Colors.red,
          //  ),
          //  Card(
          //    color: Colors.red,
          //  ),
          //  Card(
          //    color: Colors.red,
          //  ),
          // Card(
          //   color: Colors.red,
          // ),
          // ]),
          // itemExtent: 250.0)
        ],
      ),
    );
  }
}

class Mybar extends StatelessWidget {
  const Mybar({
    Key key,
    @required this.image4,
  }) : super(key: key);

  final String image4;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text("Flutter App"),
        centerTitle: true,
        background: Image.network(
          image4,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
