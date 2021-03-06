import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/pages/home/controller/home_controller.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  final homeController = Get.find<HomeController>();

  final _stepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            },
            child: Text('increase'),
            color: Colors.green[200],
            textColor: Colors.white,
          ),
          FlatButton(
            onPressed: () {
              homeController.decrement();
            },
            child: Text('decrease'),
            color: Colors.red[200],
            textColor: Colors.white,
          ),
          FlatButton(
            onPressed: () {
              homeController.reset();
            },
            child: Text('Reset'),
            color: Colors.black,
            textColor: Colors.white,
          ),
          SizedBox(
            height: 40,
          ),
          FlatButton(
            onPressed: () {
              Get.toNamed('/detail');
            },
            child: Text('Go to Detail'),
            color: Colors.purple,
            textColor: Colors.white,
          ),
          FlatButton(
            onPressed: () {
              // homeController.increment();
              Get.defaultDialog(
                  title: "Getx Dialog", middleText: "Hello world");
            },
            child: Text('Dailog'),
            color: Colors.yellow,
            textColor: Colors.black,
          ),
          FlatButton(
            onPressed: () {
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
    );
  }
}
