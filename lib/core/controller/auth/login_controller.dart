import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/remote/auth/auth.dart';
import '../../class/status_request.dart';
import '../../services/services.dart';

class LoginController extends GetxController {
  late TextEditingController email, password, npassword, cpassword;
  String? teacherID;
  AuthData authRequest = AuthData(Get.find());
  MyServices myServices = Get.find();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;

  validateInput() {
    var formData = formstate.currentState;
    if (formData!.validate()) {}
  }

  @override
  void onInit() {
    teacherID = myServices.getUser()?["teacherID"].toString();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
