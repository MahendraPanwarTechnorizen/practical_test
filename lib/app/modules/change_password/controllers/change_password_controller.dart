import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ChangePasswordController extends GetxController {
  //TODO: Implement ChangePasswordController

  final count = 0.obs;

  final isCurrentPassword = false.obs;
  final currentPasswordHide = false.obs;
  TextEditingController currentPasswordController = TextEditingController();
  FocusNode focusCurrentPassword = FocusNode();

  final isNewPassword = false.obs;
  final newPasswordHide = false.obs;
  TextEditingController newPasswordController = TextEditingController();
  FocusNode focusNewPassword = FocusNode();

  final isConfirmPassword = false.obs;
  final confirmPasswordHide = false.obs;
  TextEditingController confirmPasswordController = TextEditingController();
  FocusNode focusConfirmPassword = FocusNode();

  @override
  void onInit() {
    super.onInit();
    startListener();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void startListener() {
    focusCurrentPassword.addListener(onFocusChange);
    focusNewPassword.addListener(onFocusChange);
    focusConfirmPassword.addListener(onFocusChange);
  }

  void onFocusChange() {
    isCurrentPassword.value = focusCurrentPassword.hasFocus;
    isNewPassword.value = focusNewPassword.hasFocus;
    isConfirmPassword.value = focusConfirmPassword.hasFocus;
  }

  void increment() => count.value++;

  clickOnSaveButton() {
    Get.toNamed(Routes.BLOOD_REPORT);
  }

  clickOnCurrentPasswordEyeButton() {}

  clickOnNewPasswordEyeButton() {}

  clickOnConfirmPasswordEyeButton() {}
}
