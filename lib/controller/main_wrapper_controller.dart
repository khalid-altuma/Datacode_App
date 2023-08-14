import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/counter_tab.dart';
import '../view/home_tab.dart';



class MainWrapperController extends GetxController {
  late PageController pageController;

  RxInt currentPage = 0.obs;
  RxBool isDarkTheme = false.obs;
  //
  RxInt value = 0.obs;
  RxInt cost = 18000.obs;


  void add() {
    value.value++;
  }

  void subtract() {
    value.value--;
  }
//
  List<Widget> pages = [
    const HomeTab(),
    const CartTab(),
  ];

  ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void switchTheme(ThemeMode mode) {
    Get.changeThemeMode(mode);
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }
  void animateToTab(int page) {
    currentPage.value = page;
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}