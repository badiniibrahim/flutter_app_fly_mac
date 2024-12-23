import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late PageController pageController;
  late TabController tabController;
  var currentIndex = 0.obs;

  @override
  void onInit() {
    pageController = PageController();
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  void updateIndex(int value) {
    currentIndex.value = value;
  }

  void nextPage() {
    if (currentIndex.value < 2) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
