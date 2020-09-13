import 'package:flutter/material.dart';

class Slid extends StatefulWidget {
  @override
  _SlidState createState() => _SlidState();
}

class _SlidState extends State<Slid> {
  double sliderValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Slider(
          divisions: 3,
          activeColor: Colors.red,
          min: 1.0,
          max: 3.0,
          value: sliderValue,
          onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
            print(sliderValue);
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: sliderValue.toInt(),
        crossAxisSpacing: 1.0,
        childAspectRatio: 16.0 / (sliderValue * 10.0),
        children: <Widget>[
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
          Card(child: Center(child: Text("Data"))),
        ],
      ),
    );
  }
}
