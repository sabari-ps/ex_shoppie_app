import 'package:exshoppie_app/main.dart';
import 'package:exshoppie_app/views/welcome_page/widgets/login_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/welcome.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  topLoginButton(),
                  welcomeTitleWidget(),
                ],
              ),
              loginButtons()
            ],
          ),
        ),
      ),
    );
  }

  Column loginButtons() {
    return Column(
      children: [
        LoginButtonWithIcon(
          title: "CONTINUE WITH FACEBOOK",
          icon: Icons.facebook,
          onClick: () {},
          bgColor: Colors.blue,
        ),
        const SizedBox(
          height: 16.0,
        ),
        LoginButtonWithIcon(
          title: "SIGNUP WITH EMAIL",
          icon: Icons.email,
          onClick: () {},
          bgColor: Colors.black,
        ),
        const SizedBox(
          height: 16.0,
        ),
      ],
    );
  }

  Text welcomeTitleWidget() {
    return const Text(
      "Ideal Store For\nYour Shopping",
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
        color: Color(0xFF191B1D),
        fontSize: 24.0,
        decoration: TextDecoration.none,
      ),
    );
  }

  Row topLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton.icon(
          onPressed: () {
            routesCtrl.toLoginPage();
          },
          icon: const Icon(
            Icons.chevron_right,
            color: Colors.black,
          ),
          label: const Text(
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
