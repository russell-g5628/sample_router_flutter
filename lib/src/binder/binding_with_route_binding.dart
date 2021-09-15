import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sample_router_flutter/src/controller/binding_controller.dart';

class BindingWithRouteBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => BindingController());
    Get.put(BindingController());
  }
}
