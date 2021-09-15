import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/controller/dependency_controller.dart';
import 'package:sample_router_flutter/src/pages/dependencies/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('의존성 관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Get.put'),
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.put(DependencyController());
                }));
              },
            ),
            ElevatedButton(
              child: Text('Get.lazyPut'),
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.lazyPut<DependencyController>(
                      () => DependencyController());
                }));
              },
            ),
            ElevatedButton(
              child: Text('Get.putAsync'),
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.putAsync<DependencyController>(() async {
                    return DependencyController();
                  });
                }));
              },
            ),
            ElevatedButton(
              child: Text('Get.create'), // 다른 것들은 모두 싱글톤이지만 이것만 Create패턴
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.create<DependencyController>(
                      () => DependencyController());
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
