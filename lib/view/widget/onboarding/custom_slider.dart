import 'package:flutter/material.dart';
import 'package:moolat/core/constant/color.dart';
import 'package:moolat/data/datasource/static/static.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingList.length,
      itemBuilder:
          (context, i) => Column(
            children: [
              Text(
                onBoardingList[i].title!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80),
              Image.asset(
                onBoardingList[i].image!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 40),
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
    );
  }
}
