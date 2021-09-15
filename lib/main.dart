import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/binder/binding_with_route_binding.dart';
import 'package:sample_router_flutter/src/binding_with_route.dart';
import 'package:sample_router_flutter/src/home.dart';
import 'package:sample_router_flutter/src/pages/named/first_named.dart';
import 'package:sample_router_flutter/src/pages/named/second_named.dart';
import 'package:sample_router_flutter/src/pages/next.dart';
import 'package:sample_router_flutter/src/pages/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Home(),  // Named route 사용시 주석처리
      initialRoute: "/",

      /// NOTE Original Flutter
      // routes: {
      //   "/": (context) => Home(),
      //   "/first": (context) => FirstNamedPage(),
      //   "/second": (context) => SecondNamedPage(),
      // },

      /// Note GETX
      getPages: [
        GetPage(
          name: "/",
          page: () => Home(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/first",
          page: () => FirstNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/second",
          page: () => SecondNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/next",
          page: () => NextPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/user/:uid",
          page: () => UserPage(),
          transition: Transition.zoom,
        ),
        // GetPage(
        //   name: '/binding',
        //   page: () => BindingWithRoutePage(),
        //   binding: BindingsBuilder(() {
        //     Get.put(BindingController);
        //   }),
        GetPage(
          name: '/binding',
          page: () => BindingWithRoutePage(),
          binding: BindingWithRouteBinding(),
        )
      ],
    );
  }
}
