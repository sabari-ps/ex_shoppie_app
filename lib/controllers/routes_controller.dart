import 'dart:async';

import 'package:exshoppie_app/main.dart';
import 'package:exshoppie_app/views/on_board/widgets/on_board_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutesController extends GetxController {
  final List<OnBoardPage> pages = const [
    OnBoardPage(
      image: 'assets/images/g_started_1.jpg',
      subtitle: "OVER THOUSANDS OF STYLISH FASHION PRODUCTS.",
      title: "DISCOVER TRENDS",
    ),
    OnBoardPage(
      image: 'assets/images/g_started_2.jpg',
      subtitle: "CHOOSE THE ITEMS YOU'RE INTERESTED IN.",
      title: "ADD TO YOUR WISHLIST",
    ),
    OnBoardPage(
      image: 'assets/images/g_started_3.jpg',
      subtitle: "A SMART EXPERIENCE, FROM BROWSING TO DELIVERY.",
      title: "IT'S SIMPLY FOR YOU",
    ),
  ];
  PageController pageController = PageController(initialPage: 0);
  RxInt currentPageIndex = 0.obs;

  void toSplashScreen() => Timer(
        const Duration(
          milliseconds: 5000,
        ),
        checkingInitialRun,
      );

  void toOnBoardScreen() => Get.offNamed('/onBoarding');
  void toWelcomePage() => Get.offNamed('/welcomePage');
  void toLoginPage() => Get.toNamed('/loginPage');

  void checkingInitialRun() async {
    bool initialRun = storageCtrl.storage.read('initialRun') ?? true;
    if (initialRun) {
      toOnBoardScreen();
    } else {
      toWelcomePage();
    }
  }
}
