import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moolat/controller/onboardingcontroller.dart';
import 'package:moolat/data/datasource/static/static.dart';

import 'Package:moolat/core/constant/color.dart';

class OnBoardingDotController extends StatelessWidget {
  const OnBoardingDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerAction>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 900),
                    width: controller.currentPage == index ? 30 : 5,
                    height: 6,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ));
  }
}
