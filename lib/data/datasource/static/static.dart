// this file contain all onboarding data.

import 'package:moolat/core/constant/imageasset.dart';

import 'Package:moolat/data/model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: 'Choose Product',
      body:
          'We have a 100k products.Choose \n Your product  form our \n E-Commerce shop.',
      image: ImageAsset.onBoaringImageone),
  OnBoardingModel(
      title: 'Easy and safe Payment',
      body:
          'Easy checkout and safe payment \n method. Trusted by our customers \n from all over the world.',
      image: ImageAsset.onBoaringImageTwo),
  OnBoardingModel(
      title: 'Track your order',
      body:
          'Best tracker has been used for \n track your order. You’ll know where \n  your product is at the moment.',
      image: ImageAsset.onBoaringImageThree),
  OnBoardingModel(
      title: 'Fast Delivery',
      body:
          'Reliable and fast delivery. We \n deliver your product the fastest\n way possible.',
      image: ImageAsset.onBoaringImageFour),
];
