import 'package:flutter/material.dart';
import 'package:moolat/core/constant/color.dart';
import 'package:moolat/data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onBoardingList.length,
              itemBuilder:
                  (context, i) => Column(
                    children: [
                      Text(
                        onBoardingList[i].title!,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 80),
                      Image.asset(
                        onBoardingList[i].image!,
                        width: 200,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          onBoardingList[i].body!,
                          style: TextStyle(
                            height: 1,
                            color: AppColor.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    ...List.generate(
                      onBoardingList.length,
                      (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5),
                        duration: Duration(milliseconds: 500),
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
