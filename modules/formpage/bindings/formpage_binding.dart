import 'package:get/get.dart';

import '../controllers/formpage_controller.dart';

class FormpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormpageController>(
      () => FormpageController(),
    );
  }
}
