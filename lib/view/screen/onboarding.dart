import 'package:flutter/material.dart';
import 'package:moolat/data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder:
              (context, i) => Column(
                children: [
                  Text(
                    onBoardingList[i].title!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 80),
                  Image.asset(onBoardingList[i].image!),
                  Text(onBoardingList[i].body!),
                  Container(width: double.infinity),
                ],
              ),
        ),
      ),
    );
  }
}
