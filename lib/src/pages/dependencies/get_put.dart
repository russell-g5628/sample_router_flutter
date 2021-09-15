import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetPUT'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.find<DependencyController>().increase();
          },
          child: Text('TTTTT'),
        ),
      ),
    );
  }
}
