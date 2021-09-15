import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/controller/count_controller_with_getx_rx.dart';

class WithGetXRx extends StatelessWidget {
  const WithGetXRx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetXRx());
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GetX with RX',
            style: TextStyle(fontSize: 30),
          ),
          Obx(() {
            return Text(
              '${Get.find<CountControllerWithGetXRx>().count.value}',
              style: TextStyle(fontSize: 50),
            );
          }),
          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetXRx>().increase();
            },
            child: Text(
              '+',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetXRx>().putNumber(5);
            },
            child: Text(
              'Set Number 5',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
