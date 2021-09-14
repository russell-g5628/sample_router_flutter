import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']}"),
            Text("${Get.parameters['age']}"),
            // Object Type 받기

            ElevatedButton(
              onPressed: () {
                /// NOTE Original Flutter
                // Navigator.of(context).pop();

                /// Note GETX
                Get.back();
              },
              child: Text('뒤로 가기'),
            ),
          ],
        ),
      ),
    );
  }
}
