part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static Future<String> get INITIAL async {
    return Routes.HOME;
  }

  static const HOME = _Paths.HOME;
  static const SPLASH = _Paths.SPLASH;
  static const ONBOARDING = _Paths.ONBOARDING;
}

abstract class _Paths {
  _Paths._();
  static const HOME = "/home";
  static const SPLASH = '/splash';
  static const ONBOARDING = '/onboarding';
}
