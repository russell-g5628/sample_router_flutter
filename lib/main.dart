import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_router_flutter/src/home.dart';
import 'package:sample_router_flutter/src/named/first_named.dart';
import 'package:sample_router_flutter/src/named/second_named.dart';

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
      // home: Home(),
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
      ],
    );
  }
}
