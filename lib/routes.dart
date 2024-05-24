import 'package:get/get.dart';
import 'package:initial_code/test_view.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const TestView()),

  // ********************** Authentication
  // GetPage(
  //     name: AppRoute.loginPage,
  //     page: () => const LoginPage(),
  //     transition: Transition.rightToLeft,
  //     transitionDuration: const Duration(milliseconds: 200)),
  // GetPage(
  //     name: AppRoute.registerPage,
  //     page: () => const RegisterPage(),
  //     transition: Transition.rightToLeft,
  //     transitionDuration: const Duration(milliseconds: 200)),
];


class AppRoute {
  
  // ******************** Authentication
  static const String loginPage = "/loginPage";
  static const String registerPage = "/registerPage";


}
