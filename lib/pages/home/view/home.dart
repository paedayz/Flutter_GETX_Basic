import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final homeController = Get.find<HomeController>();

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
                // homeController.increment();
                Get.defaultDialog(
                    title: "Getx Dialog", middleText: "Hello world");
              },
              child: Text('Dailog'),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                // Get.defaultDialog(title: "This is dialog");
                Get.bottomSheet(Container(
                  height: 100,
                  color: Colors.white,
                  child: Text('Getx Bottom Sheet'),
                ));
                Get.snackbar(
                  "Title",
                  "This is getx snackbar",
                  snackPosition: SnackPosition.TOP,
                );
                // homeController.increment();
                // print(apiService.fetchTextFromApi());
                // Get.toNamed('/detail');
                // Get.to(DetailScreen());
                // Get.off(DetailScreen());
              },
              child: Text('Snack Bar'),
              color: Colors.red,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      )
                    ],
                  ),
                ));
              },
              child: Text('Bottomsheet'),
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
