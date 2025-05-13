import 'package:flutter/material.dart';
import 'package:moolat/core/constant/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        onPressed: () {},
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),

        color: AppColor.primary,
        child: Text('Continue', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
