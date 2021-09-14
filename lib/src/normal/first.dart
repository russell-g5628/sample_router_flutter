import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /// NOTE Original Flutter
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => SecondPage()));

                /// GETX
                Get.to(SecondPage());
              },
              child: Text('다음 페이지 가기'),
            )
          ],
        ),
      ),
    );
  }
}
