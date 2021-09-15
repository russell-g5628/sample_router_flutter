import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/controller/count_controller_with_getx.dart';
import 'package:sample_router_flutter/src/pages/state/with_getx_rx.dart';

class RxStateManagePage extends StatelessWidget {
  const RxStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: Text('RX 상태관리 Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetXRx()),
          ],
        ),
      ),
    );
  }
}
