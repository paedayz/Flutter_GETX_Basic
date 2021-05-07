import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/detail/view/detail.dart';
import './pages/home/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/detail', page: () => DetailScreen()),
      ],
      initialRoute: '/home',
    );
  }
}
