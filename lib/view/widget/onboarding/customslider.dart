///  Customer pageviewer for the onboarding screen.
/// */
import 'package:flutter/material.dart';
import 'package:moolat/data/datasource/static/static.dart';

import 'Package:moolat/core/constant/color.dart';

class OnBoardingCustomSlider extends StatelessWidget {
  const OnBoardingCustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 80),
          Image.asset(
            onBoardingList[i].image!,
            width: 250,
            height: 300,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2,
                  color: AppColor.gray,
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
