import 'package:get/get.dart';

import '../modules/formpage/bindings/formpage_binding.dart';
import '../modules/formpage/views/formpage_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/penyetorpage/bindings/penyetorpage_binding.dart';
import '../modules/penyetorpage/views/penyetorpage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FORMPAGE,
      page: () => FormpageView(),
      binding: FormpageBinding(),
    ),
    GetPage(
      name: _Paths.PENYETORPAGE,
      page: () => const PenyetorpageView(),
      binding: PenyetorpageBinding(),
    ),
  ];
}
