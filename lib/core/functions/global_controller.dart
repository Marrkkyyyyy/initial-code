import 'package:get/get.dart';
import '../services/services.dart';

class GlobalController extends GetxController {
  MyServices myServices = Get.find();
  String? userType;

  @override
  void onInit() {
    super.onInit();
    initializeUser();
  }

  Future<void> initializeUser() async {
    await checkUser();
    navigateToAppropriateScreen();
  }

  Future<void> checkUser() async {
    Map<String, dynamic>? userData = myServices.getUser();
    if (userData != null) {
      userType = userData["userType"].toString();
    }
  }

  void navigateToAppropriateScreen() {
    if (userType == "student") {
      // Get.offAllNamed(AppRoute.studentDashboard);
    } else if (userType == "teacher") {
      // Get.offAllNamed(AppRoute.teacherDashboard);
    } else if (userType == "admin") {
      // Get.offAllNamed(AppRoute.adminDashboard);
    }
  }
}
