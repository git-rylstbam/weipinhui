import 'package:get/get.dart';
import 'package:weipinhui/pages/home/page.dart';

/// CreateDate: 2025/6/30 16:29
/// Author: Lee
/// Description:

abstract class Routes {
  static const home = '/';

  static final routes = [GetPage(name: home, page: () => const HomePage())];
}
