import 'package:flutter/material.dart';
import 'package:flutter_app/Orientationbuilder.dart';

//void main() => runApp(MaterialApp(home: new Orientation()));

class Orientation extends StatefulWidget {
  static var portrait;

  @override
  _OrientationState createState() => _OrientationState();
}

class _OrientationState extends State<Orientation> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButtonLocation: orientation == Orientation.portrait
              ? FloatingActionButtonLocation.endFloat
              : FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
        );
      },
    );
  }
}
