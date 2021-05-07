import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  final apiService = Get.put(ApiService());

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
            Text(
              "This is home screen",
              style: TextStyle(fontSize: 24),
            ),
            FlatButton(
              onPressed: () {
                print(apiService.fetchTextFromApi());
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
