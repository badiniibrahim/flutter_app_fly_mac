import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageIndicator extends StatelessWidget {
  final int itemCount;
  final RxInt currentIndex;

  const PageIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(itemCount, (index) {
        return Obx(
          () => Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color:
                  currentIndex.value == index ? Colors.white : Colors.white38,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }
}
