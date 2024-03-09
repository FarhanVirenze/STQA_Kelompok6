import 'package:get/get.dart';

import '../controllers/penyetorpage_controller.dart';

class PenyetorpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PenyetorpageController>(
      () => PenyetorpageController(),
    );
  }
}
