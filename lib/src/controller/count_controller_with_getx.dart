import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  /// Find 대신에 CountControllerWithGetX.to.methodName()으로 사용 가능
  // static CountControllerWithGetX get to => Get.find();

  int count = 0;

  void increase(String id) {
    count++;
    update([id]);
    Get.reset();
  }
}
