import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../common/common_methods.dart';
import '../../../../common/common_widgets.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/create_new_password_controller.dart';

class CreateNewPasswordView extends GetView<CreateNewPasswordController> {
  const CreateNewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      controller.count.value;
      return GestureDetector(
        onTap: ()=>CommonMethods.unFocsKeyBoard(),
        child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 10.px),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CommonWidgets.commonElevatedButton(
                  onPressed: () => controller.clickOnSubmitButton(),
                  child: Text(
                    StringConstants.submit,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                SizedBox(height: 10.px),
              ],
            ),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 20.px),
            children: [
              Column(
                children: [
                  SizedBox(height: 40.px),
                  CommonWidgets.appBarView(
                      title: StringConstants.createNewPassword),
                  SizedBox(height: 20.px),
                  Text(
                    StringConstants
                        .yourNewPasswordMustBeDifferentFromPreviousUsedPasswords,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 16.px),
                  ),
                  SizedBox(height: 20.px),
                  CommonWidgets.commonTextFieldForLoginSignUP(
                    obscureText: controller.hideNewPassword.value,
                    controller: controller.newPasswordController,
                    isCard: controller.isNewPassword.value,
                    focusNode: controller.focusNewPassword,
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          IconConstants.icLock,
                          height: 24.px,
                          width: 24.px,
                          color: controller.isNewPassword.value
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onSecondary,
                        ),
                      ],
                    ),
                    hintText: StringConstants.pleaseEnterNewPassword,
                    hintTextColor: controller.isNewPassword.value,
                    suffixIcon: GestureDetector(
                      onTap: () => controller.clickOnEyeNewPasswordButton(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            controller.hideNewPassword.value
                                ? IconConstants.icView
                                : IconConstants.icHide,
                            color: controller.isNewPassword.value
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onSecondary,
                            height: 18.px,
                            width: 18.px,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.px),
                  CommonWidgets.commonTextFieldForLoginSignUP(
                    obscureText: controller.hideConfirmPassword.value,
                    controller: controller.confirmPasswordController,
                    isCard: controller.isConfirmPassword.value,
                    focusNode: controller.focusConfirmPassword,
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          IconConstants.icLock,
                          height: 24.px,
                          width: 24.px,
                          color: controller.isConfirmPassword.value
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).colorScheme.onSecondary,
                        ),
                      ],
                    ),
                    hintText: StringConstants.pleaseConfirmPassword,
                    hintTextColor: controller.isConfirmPassword.value,
                    suffixIcon: GestureDetector(
                      onTap: () => controller.clickOnEyeConfirmPasswordButton(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            controller.hideConfirmPassword.value
                                ? IconConstants.icView
                                : IconConstants.icHide,
                            color: controller.isConfirmPassword.value
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).colorScheme.onSecondary,
                            height: 18.px,
                            width: 18.px,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
