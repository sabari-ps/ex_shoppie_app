import 'package:exshoppie_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextorGetButton extends StatelessWidget {
  final PageController controller;
  const NextorGetButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          if (routesCtrl.currentPageIndex.value !=
              (routesCtrl.pages.length - 1)) {
            controller.nextPage(
              duration: const Duration(
                milliseconds: 400,
              ),
              curve: Curves.easeInOut,
            );
          } else {
            routesCtrl.toWelcomePage();
            storageCtrl.storage.write('initialRun', false);
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 40.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.black,
          ),
          child: Text(
            (routesCtrl.currentPageIndex.value == (routesCtrl.pages.length - 1))
                ? "GET STARTED"
                : "NEXT",
            style: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
