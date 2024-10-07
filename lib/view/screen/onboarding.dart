import 'package:flutter/material.dart';
import 'package:moolat/view/widget/onboarding/custombutton.dart';
import 'package:moolat/view/widget/onboarding/customdotcontroller.dart';
import 'package:moolat/view/widget/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
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
