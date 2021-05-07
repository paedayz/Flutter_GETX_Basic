import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/home/controller/home_controller.dart';
import 'package:getx_1/pages/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  final apiService = Get.put(ApiService());
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeController.count}",
                style: TextStyle(fontSize: 24),
              ),
            ),
            FlatButton(
              onPressed: () {
                homeController.increment();
                // print(apiService.fetchTextFromApi());
                // Get.toNamed('/detail');
                // Get.to(DetailScreen());
                // Get.off(DetailScreen());
              },
              child: Text('Go to Detail'),
              color: Colors.black,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
