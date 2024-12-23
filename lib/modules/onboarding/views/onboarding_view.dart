import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fly_mac/modules/onboarding/widgets/onboarding_page.dart';
import 'package:fly_mac/modules/onboarding/widgets/page_indicator.dart';
import 'package:fly_mac/routes/app_pages.dart';
import 'package:fly_mac/utilies/colors.style.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updateIndex,
            children: const [
              OnboardingPage(
                imagePath: "assets/images/SeekPng1.png",
                title: "Easy To Use. Easy Flight Search.",
                description:
                    "“User-friendly interface. Efficient flight search.”",
              ),
              OnboardingPage(
                  imagePath: "assets/images/SeekPng2.png",
                  title: 'Quick Booking. Real-Time Flight Alerts.',
                  description:
                      "“Enjoy a hassle-free booking and instant flight status updates.”"),
              OnboardingPage(
                  imagePath: "assets/images/SeekPng3.png",
                  title: 'Fast and Secure Payment Options',
                  description:
                      "“Secure & Trusted Payments: Protecting Your Financial Information.”"),
            ],
          ),
          Positioned(
            bottom: 150,
            child: FadeInDown(
              child: Center(
                child: PageIndicator(
                  itemCount: 3,
                  currentIndex: controller.currentIndex,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Obx(
                () => controller.currentIndex.value < 2
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                size: 25,
                                Icons.arrow_right_alt,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      )
                    : SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAndToNamed(Routes.HOME);
                          },
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
