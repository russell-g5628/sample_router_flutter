import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/Home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /// NOTE Original Flutter
                // Navigator.of(context).pop();

                /// Note GETX
                Get.back();
              },
              child: Text('뒤로 가기'),
            ),
            ElevatedButton(
              onPressed: () {
                /// NOTE Original Flutter
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => Home()),
                //     (route) => false);

                /// Note GETX
                Get.offAll(Home());
              },
              child: Text('Home으로 가기'),
            )
          ],
        ),
      ),
    );
  }
}
