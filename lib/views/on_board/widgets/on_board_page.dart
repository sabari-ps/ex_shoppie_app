import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  final String image, title, subtitle;

  const OnBoardPage({
    Key? key,
    required this.image,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 32.0,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 4.0,
                  fontFamily: 'Bebas Neue',
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12.0,
                  decoration: TextDecoration.none,
                  color: Color(0xFF191B1D),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
