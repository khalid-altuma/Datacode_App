import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_wrapper_controller.dart';

class CartTab extends GetView<MainWrapperController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainWrapperController());
    return
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.25,
                image: AssetImage("assets/unsplash3.jpg"),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Counter:',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
            ),),
              Obx(() => Text(
                '${controller.value}',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            ),
            ],
          ),
      );
  }
}
