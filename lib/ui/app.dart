import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page.dart';

ValueNotifier<int> counterNotifier = ValueNotifier<int>(0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
