import 'package:flutter/material.dart';
// Package Import
import 'package:get/get.dart';
import 'package:moolat/controller/onboardingcontroller.dart';
//Project Custom Widget Import
import 'package:moolat/view/widget/onboarding/custombutton.dart';
import 'package:moolat/view/widget/onboarding/customdotcontroller.dart';
import 'package:moolat/view/widget/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    //Attached the onBoarding controller
    Get.put(OnBoardingControllerAction());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: OnBoardingCustomSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  OnBoardingDotController(),
                  Spacer(flex: 2),
                  OnBoardingCustomButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
