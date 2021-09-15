import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
// class WithGetX extends GetView<CountControllerWithGetX> {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GetX',
            style: TextStyle(fontSize: 30),
          ),
          GetBuilder<CountControllerWithGetX>(
            id: 'first',
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: 'second',
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          buildElevatedButton('first'),
          buildElevatedButton('second'),
        ],
      ),
    );
  }

  ElevatedButton buildElevatedButton(String id) {
    return ElevatedButton(
      onPressed: () {
        // controller.increase(id);
        Get.find<CountControllerWithGetX>().increase(id);
      },
      child: Text(
        '+',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
