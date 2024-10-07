import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

// Implementing the Onboarding controller

class OnBoardingControllerAction extends OnBoardingController {
  late PageController pageController;

  // @currentPage Hold current page index.
  int currentPage = 0;

  @override
  onPageChanged(int index) {
    // Update the current page index.
    currentPage = index;

    // Update the UI when page changes.
    update();
  }

  @override
  next() {
    //increase the current page index.
    currentPage++;

    // if the current page is the last page return to first page.
    if (currentPage >= 4) {
      currentPage = 0;
    }

    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
