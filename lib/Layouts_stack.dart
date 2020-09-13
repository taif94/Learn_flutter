import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lay extends StatefulWidget {
  @override
  _LayState createState() => _LayState();
}

class _LayState extends State<Lay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(
              minWidth: 50.0,
              minHeight: 50.0,
              maxWidth: 200.0,
              maxHeight: 200.0),
          child: Stack(
            fit: StackFit.passthrough,
            //fit: StackFit.loose,
            alignment: Alignment.topRight,
            children: <Widget>[
              Container(
                color: Colors.green,
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.red,
                height: 100.0,
                width: 50,
              ),
              Positioned(
                left: -10.0,
                right: 10.0,
                top: -10.0,
                bottom: 10.0,
                child: Container(
                  color: Colors.black,
                  height: 50.0,
                  width: 100.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
