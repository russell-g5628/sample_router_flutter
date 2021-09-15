import 'package:get/get.dart';

class CountControllerWithGetXRx extends GetxController {
  RxInt count = 0.obs;

  void increase() {
    count++;
  }

  void putNumber(int num) {
    count(num);
  }

  @override
  void onInit() {
    // once(listener, (callback) => null);
    once(count, (callback) => print('최고 한번 만'));
    // ever(listener, (callback) => null);
    // everAll(listeners, (callback) => null);
    ever(count, (callback) => print('매번 호출'));

    // interval(listener, (callback) => null);  //default Duration: 1 second
    interval(count, (callback) => print('변경 되고 설정한 시간 후'),
        time: Duration(seconds: 1));

    // debounce(listener, (callback) => null); //default Duration: 800 millisecond
    debounce(count, (callback) => print('마지막 한번 호충'),
        time: Duration(seconds: 1));
  }

  @override
  void onClose() {}

  @override
  void update([List<Object>? ids, bool condition = true]) {}
}
