import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: tabController, tabs: [
          Icon(
            Icons.home,
            color: Colors.blueGrey,
            size: 30.0,
          ),
          Icon(
            Icons.notifications_active,
            color: Colors.purple,
            size: 30.0,
          ),
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 30.0,
          ),
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        Container(
          color: Colors.blueGrey,
        ),
        Container(
          color: Colors.purple,
        ),
        Container(
          color: Colors.black,
        ),
      ]),
    );
  }
}
