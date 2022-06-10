import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt _counter = 0.obs;

  RxInt get counter => _counter;

  set counter(RxInt value) {
    _counter = value;
    update();
  }
}
