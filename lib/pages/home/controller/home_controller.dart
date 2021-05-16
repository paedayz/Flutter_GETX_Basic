import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  var step = 1.obs;

  increment() {
    count.value = count.value + step.value;
  }

  decrement() {
    count--;
  }

  reset() {
    count.value = 0;
  }

  setStep(int value) {
    step.value = value;
  }
}
