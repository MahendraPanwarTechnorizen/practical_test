import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignUpController extends GetxController {
  final count = 0.obs;
  final hide = true.obs;

  FocusNode focusFullName = FocusNode();
  FocusNode focusEmail = FocusNode();
  FocusNode focusCompanyName = FocusNode();
  FocusNode focusPhoneNumber = FocusNode();
  FocusNode focusGender = FocusNode();
  FocusNode focusBirthDate = FocusNode();
  FocusNode focusPassword = FocusNode();

  final isFullName = false.obs;
  final isEmail = false.obs;
  final isCompanyName = false.obs;
  final isPhoneNumber = false.obs;
  final isGender = false.obs;
  final isBirthDate = false.obs;
  final isPassword = false.obs;

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final checkBoxValue = false.obs;

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

  void onFocusChange() {
    isFullName.value = focusFullName.hasFocus;
    isEmail.value = focusEmail.hasFocus;
    isCompanyName.value = focusCompanyName.hasFocus;
    isPhoneNumber.value = focusPhoneNumber.hasFocus;
    isGender.value = focusGender.hasFocus;
    isBirthDate.value = focusBirthDate.hasFocus;
    isPassword.value = focusPassword.hasFocus;
  }

  void increment() => count.value++;

  clickOnLoginButton() {
    Get.toNamed(Routes.LOGIN);
  }

  clickOnSignUpButton() {
    Get.toNamed(Routes.NAV_BAR);
  }

  clickOnEyeButton() {
    hide.value = !hide.value;
  }

  void startListener() {
    focusFullName.addListener(onFocusChange);
    focusEmail.addListener(onFocusChange);
    focusCompanyName.addListener(onFocusChange);
    focusPhoneNumber.addListener(onFocusChange);
    focusGender.addListener(onFocusChange);
    focusBirthDate.addListener(onFocusChange);
    focusPassword.addListener(onFocusChange);
  }

  clickOnCancelButton() {}
}
