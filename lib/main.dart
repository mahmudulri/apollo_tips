import 'package:apollo_betting_tips/demopage.dart';
import 'package:apollo_betting_tips/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/regular/regular_tips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}
