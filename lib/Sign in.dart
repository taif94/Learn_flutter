import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Sign()));

class Sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      child: MaterialApp(
        title: 'Material App',
        home: AuthScreen(),
      ),
    );
  }
}
