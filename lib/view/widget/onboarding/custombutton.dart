import 'package:flutter/material.dart';

import 'Package:moolat/core/constant/color.dart';

class OnBoardingCustomButton extends StatelessWidget {
  const OnBoardingCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 0,
        ),
        textColor: Colors.white,
        onPressed: () {
          // Navigate to the next screen onboarding
        },
        color: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius value here
        ),
        child: const Text(
          'Continue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
