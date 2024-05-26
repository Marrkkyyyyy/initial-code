import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:initial_code/core/functions/check_internet.dart';
import '../services/services.dart';

class GlobalController extends GetxController {
  final Connectivity _connectivity = Connectivity();
  CheckConnection connection = CheckConnection();
  MyServices myServices = Get.find();
  String? userType;

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged
        .listen(connection.connectionStatus);
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
