import 'package:get/get.dart';
import 'package:weather_app/Screen/splash_screen.dart';
import 'package:weather_app/Screen/state.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/location', page: () => const StateorCity()),
  ];
}
