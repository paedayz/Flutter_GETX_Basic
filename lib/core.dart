import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/detail/view/detail.dart';
import 'package:getx_1/pages/home/controller/home_controller.dart';
import 'package:getx_1/pages/home/view/home1.dart';

class Core extends StatefulWidget {
  @override
  _CoreState createState() => _CoreState();
}

class _CoreState extends State<Core> {
  int _currentIndex = 0;
  List<Widget> data = [
    Home1(),
    DetailScreen(),
    Text('noti'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: data[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active_rounded,
              ),
              title: Text('home')),
        ],
      ),
    );
  }
}
