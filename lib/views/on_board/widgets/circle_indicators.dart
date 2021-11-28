import 'package:exshoppie_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircleIndicators extends StatelessWidget {
  final int length;
  const CircleIndicators({
    Key? key,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          length,
          (index) => buildCircles(
            context: context,
            index: index,
          ),
        ),
      ),
    );
  }

  Widget buildCircles({
    required BuildContext context,
    required int index,
  }) {
    return Obx(
      () => Container(
        width: 12.0,
        height: 12.0,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: (routesCtrl.currentPageIndex.value == index)
              ? const Color(0xFF191B1D)
              : Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}
