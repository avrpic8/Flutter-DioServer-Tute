part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const REGISTER = _Paths.REGISTER;

  Routes._();
}

abstract class _Paths {
  static const HOME = '/home';
  static const REGISTER = '/register';
}
