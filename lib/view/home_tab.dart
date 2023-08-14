import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_wrapper_controller.dart';

class HomeTab  extends GetView<MainWrapperController> {
  const HomeTab ({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainWrapperController());
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(
        opacity: 0.75,
        image: AssetImage("assets/unsplash4.jpg"),
        fit: BoxFit.cover),
    ),
    child: Center(
        child: SizedBox(
          width: 275.0,
          height: 220.0,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/unsplash1.jpg", height: 150, width: 150, ),
                    const Column(
                      children: [
                        Text("Name in English"),
                        Text("ناوى به كوردى"),
                        Text("الاسم"),
                        Text("18,900 IQD")
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Sara Xan \t"),
                    Image.asset("assets/unsplash2.jpg", height: 50, width: 50,),
                    FloatingActionButton(
                      mini: true,
                      onPressed: (){
                        controller.subtract();
                      },
                      tooltip: 'decrement',
                      backgroundColor: Colors.red,
                      shape: const RoundedRectangleBorder(),
                      child: const Icon(Icons.remove_outlined),
                    ),
                    Obx(() =>  Text('${controller.value}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal
                      ),)),
                    FloatingActionButton(
                      mini: true,
                      onPressed: (){
                        controller.add();
                      },
                      tooltip: 'Increment',
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ),
      );
  }
}

