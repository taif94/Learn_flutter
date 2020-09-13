import 'package:flutter/material.dart';

class Drop extends StatelessWidget {
  var selectedvalue = 'ali';
  List<String> users = ['ali', 'ahmed', 'asd', 'omer'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              elevation: 1,
              value: selectedvalue,
              items: users.map((user) {
                return DropdownMenuItem(
                    value: user,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.verified_user),
                        Text(user),
                      ],
                    ));
              }).toList(),
              onChanged: (v) {
                print(v);
                setState() {
                  selectedvalue = v;
                }
              }),
        ),
      ),
    );
  }
}
