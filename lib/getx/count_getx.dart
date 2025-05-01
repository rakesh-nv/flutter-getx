import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt counter = 1.obs;

  countIncrement() {
    counter.value++;
  }

  RxDouble opacity = .4.obs;

  setOpacity(double value) {
    opacity.value = value;
  }

  RxBool notification = false.obs;

  setSwitch(bool value) {
    notification.value = value;
    print(notification.value);
  }
}
