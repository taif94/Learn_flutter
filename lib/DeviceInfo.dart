import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';

class Package extends StatefulWidget {
  @override
  _PackageState createState() => _PackageState();
}

class _PackageState extends State<Package> {
  getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

    var brand = androidInfo.brand;
    setState(() {
      info = brand;
    });
  }

  String info = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
                onPressed: getDeviceInfo, child: new Text(" Get Device Info")),
            new Text(info)
          ],
        ),
      ),
    );
  }
}
