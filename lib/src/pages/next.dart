import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("${Get.arguments}"),              // String Type 받기
            // Text("${Get.arguments.toString()}"),   // Number Type 받기
            // Text("이름: ${Get.arguments['name']},  나이 : ${Get.arguments['age'].toString()}"),   // Map Type 받기
            Text(
                "이름: ${(Get.arguments as User).name},  나이 : ${(Get.arguments as User).age}"),
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
