import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../controller/main_wrapper_controller.dart';
import '../../main_wrapper.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DataCode App',
      debugShowCheckedModeBanner: false,
      themeMode: Get.put(MainWrapperController()).theme,
      home: MainWrapper(),
    );
  }
}