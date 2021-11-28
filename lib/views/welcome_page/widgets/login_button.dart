import 'package:flutter/material.dart';

class LoginButtonWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color bgColor;
  final Function onClick;
  const LoginButtonWithIcon({
    Key? key,
    required this.title,
    required this.icon,
    required this.onClick,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 64,
      height: 40.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
              fontSize: 12.0,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
