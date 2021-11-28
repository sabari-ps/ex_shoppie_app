import 'package:exshoppie_app/main.dart';
import 'package:exshoppie_app/views/on_board/widgets/circle_indicators.dart';
import 'package:exshoppie_app/views/on_board/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            scrollBehavior: const MaterialScrollBehavior(),
            controller: routesCtrl.pageController,
            itemCount: routesCtrl.pages.length,
            itemBuilder: (context, index) {
              return routesCtrl.pages[index];
            },
            onPageChanged: (value) {
              routesCtrl.currentPageIndex.value = value;
            },
          ),
          Positioned(
            bottom: 64.0,
            left: 0,
            right: 0,
            child: CircleIndicators(
              length: routesCtrl.pages.length,
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 0,
            left: 0,
            child: Center(
              child: NextorGetButton(
                controller: routesCtrl.pageController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
