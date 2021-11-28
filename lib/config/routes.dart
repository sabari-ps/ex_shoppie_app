import 'package:exshoppie_app/views/login_page/login_page.dart';
import 'package:exshoppie_app/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:exshoppie_app/views/on_board/on_board_screen.dart';
import 'package:exshoppie_app/views/welcome_page/welcome_page.dart';

final List<GetPage<dynamic>> appRoutes = [
  GetPage(
    name: '/splash',
    page: () => const SplashScreen(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(
      milliseconds: 800,
    ),
  ),
  GetPage(
    name: '/onBoarding',
    page: () => const OnBoardScreen(),
    transition: Transition.zoom,
    transitionDuration: const Duration(
      milliseconds: 500,
    ),
  ),
  GetPage(
    name: '/welcomePage',
    page: () => const WelcomePage(),
    transition: Transition.size,
    transitionDuration: const Duration(
      milliseconds: 500,
    ),
  ),
  GetPage(
    name: '/loginPage',
    page: () => const LoginPage(),
    transition: Transition.leftToRight,
    transitionDuration: const Duration(
      milliseconds: 200,
    ),
  ),
];
