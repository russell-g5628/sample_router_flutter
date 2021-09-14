import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /// NOTE Original Flutter
                // Navigator.of(context).pushNamed("/second");
                /// 현재 페이지를 history에서 삭제 하고 다음 페이지로 이동
                // Navigator.of(context).popAndPushNamed("/second");
                // Navigator.of(context).pushReplacementNamed("/second");

                /// GETX
                // Get.toNamed("/second");
                /// 현재 페이지를 history에서 삭제 하고 다음 페이지로 이동
                Get.offNamed("/second");
              },
              child: Text('다음 페이지 가기'),
            )
          ],
        ),
      ),
    );
  }
}
