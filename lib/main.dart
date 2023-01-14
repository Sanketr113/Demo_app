import 'dart:developer';

import 'package:demo_app/devises/services.dart';
import 'package:demo_app/pages/registerpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'devises/routes.dart';
import 'pages/Homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Services service = Get.put(Services());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/registerpage',
        routes: {
          MyRoutes.register: (context) => registerpage(),
          MyRoutes.homeRoute: (context) => homepage(),
        });
  }
}
