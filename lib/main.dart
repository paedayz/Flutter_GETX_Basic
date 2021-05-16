import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/detail/binding/detail_binding.dart';
import 'package:getx_1/pages/detail/view/detail.dart';
import 'package:getx_1/pages/home/binding/home_binding.dart';
import './core.dart';

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
        GetPage(
          name: '/',
          page: () => Core(),
          // binding: HomeBinding(),
          bindings: [HomeBinding(), DetailBinding()],
        ),
        GetPage(
          name: '/detail',
          page: () => DetailScreen(),
          binding: DetailBinding(),
        ),
      ],
      initialRoute: '/home',
    );
  }
}
