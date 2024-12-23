import 'package:flutter/material.dart';
import 'package:fly_mac/routes/app_pages.dart';
import 'package:fly_mac/utils/colors.style.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1,
      body: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.ONBOARDING);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Image.asset("assets/images/splash.png"),
            ),
            const Center(
              child: Text(
                'Fly Mac',
                style: TextStyle(
                    fontFamily: "Audiowide", fontSize: 64, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
