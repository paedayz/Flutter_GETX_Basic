import 'package:get/get.dart';
import 'package:getx_1/pages/home/controller/home_controller.dart';
import 'package:getx_1/pages/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
