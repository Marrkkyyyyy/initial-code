import 'package:get/get.dart';

import '../core/class/crud.dart';
import '../core/functions/global_controller.dart';                    

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.put(GlobalController());
  }
}
