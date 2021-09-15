import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/pages/dependencies/dependency_manage_page.dart';
import 'package:sample_router_flutter/src/pages/normal/first.dart';
import 'package:sample_router_flutter/src/pages/rendering_native_controls.dart';
import 'package:sample_router_flutter/src/pages/rx_state_manage_page.dart';
import 'package:sample_router_flutter/src/pages/simple_state_manage_page.dart';

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
                  // Get.toNamed("/next", arguments: "개남");    //String Type 전달
                  // Get.toNamed("/next", arguments: 3);    //Number Type 전달
                  // Get.toNamed("/next", arguments: {"name": "개남", "age": 12}); //Map Type 전달
                  Get.toNamed("/next",
                      arguments: User("개남", 32)); //Object Type 전달

                  // Get.to(FirstPage(), arguments: "개남 "); //<--- 이렇게도 Argument전달 가능
                },
                child: Text('Argument 전달 Route')),
            ElevatedButton(
              onPressed: () {
                /// NOTE Original Flutter

                /// GETX
                Get.toNamed(
                  "/user/test123?name=개남&age=32",
                );
              },
              child: Text('동적 라우팅'),
            ),
            ElevatedButton(
              child: Text('단순 상태 관리'),
              onPressed: () {
                /// NOTE Original Flutter

                /// GETX
                Get.to(SimpleStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text('RX 상태 관리'),
              onPressed: () {
                /// NOTE Original Flutter

                /// GETX
                Get.to(RxStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text('Dependency'),
              onPressed: () {
                /// NOTE Original Flutter

                /// GETX
                Get.to(DependencyManagePage());
              },
            ),
            ElevatedButton(
              child: Text('Dependency with route'),
              onPressed: () {
                /// NOTE Original Flutter

                /// GETX
                Get.toNamed('/binding');
              },
            ),
            ElevatedButton(
              child: Text('GooMap'),
              onPressed: () {
                /// NOTE Original Flutter

                /// GETX
                Get.to(RenderNativeControl());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User(this.name, this.age);
}
