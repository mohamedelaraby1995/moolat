import 'package:flutter/material.dart';
import 'package:moolat/view/widget/onboarding/custom_button.dart';
import 'package:moolat/view/widget/onboarding/custom_dot_controller.dart';
import 'package:moolat/view/widget/onboarding/custom_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: CustomSlider()),

            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotController(),
                  Spacer(flex: 1),
                  CustomButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
