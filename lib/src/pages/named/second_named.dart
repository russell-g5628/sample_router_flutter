import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Named Page'),
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

                /// Note GETX
                Get.offAllNamed("/");
              },
              child: Text('Home으로 가기'),
            )
          ],
        ),
      ),
    );
  }
}
