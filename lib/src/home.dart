import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/normal/first.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  /// NOTE Original Flutter
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (_) => FirstPage()),
                  // );

                  /// GETX
                  Get.to(FirstPage());
                },
                child: Text('Normal Route')),
            ElevatedButton(
                onPressed: () {
                  /// NOTE Original Flutter
                  // Navigator.of(context).pushNamed("/first");

                  /// GETX
                  Get.toNamed("/first");
                },
                child: Text('Named Route')),
            ElevatedButton(
                onPressed: () {
                  /// NOTE Original Flutter

                  /// GETX
                  Get.toNamed("/first", arguments: "개남 ");
                  // Get.to(FirstPage(), arguments: "개남 "); //<--- 이렇게도 Argument전달 가능
                },
                child: Text('Argument 전달 Route')),
          ],
        ),
      ),
    );
  }
}
