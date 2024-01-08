import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../common/common_methods.dart';
import '../../../../common/common_widgets.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      controller.count.value;
      return GestureDetector(
        onTap: () => CommonMethods.unFocsKeyBoard(),
        child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 10.px),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CommonWidgets.commonElevatedButton(
                  onPressed: () => controller.clickOnSignInButton(),
                  child: Text(
                    StringConstants.signIn,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 20.px),
                // CommonWidgets.commonElevatedButton(
                //   buttonColor: Theme.of(context).colorScheme.onSecondary,
                //   onPressed: () => controller.clickOnSignUpButton(),
                //   child: Text(
                //     StringConstants.signUp,
                //     style: Theme.of(context)
                //         .textTheme
                //         .headlineSmall
                //         ?.copyWith(fontWeight: FontWeight.w700),
                //   ),
                // ),
                // SizedBox(height: 10.px),
              ],
            ),
          ),
          body: ListView(
            padding: EdgeInsets.zero,  
            children: [
              // Image.asset(
              //   ImageConstants.imageLogin,
              //   height: 320.px,
              // ),
              SizedBox(height: 100.px,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.px),
                child: Column(
                  children: [
                    SizedBox(height: 20.px),
                    Text(
                      StringConstants.loginToMoalimyPlatform,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontSize: 24.px),
                    ),
                    SizedBox(height: 6.px),
                    Text(
                      StringConstants.pleaseEnterYourLoginInformation,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontSize: 16.px),
                    ),
                    SizedBox(height: 20.px),
                    CommonWidgets.commonTextFieldForLoginSignUP(
                      controller: controller.emailController,
                      isCard: controller.isEmail.value,
                      focusNode: controller.focusEmail,
                      prefixIcon: Image.asset(
                        IconConstants.icEmail,
                        color: controller.isEmail.value
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onSecondary,
                      ),
                      hintText: StringConstants.pleaseEnterEmail,
                      hintTextColor: controller.isEmail.value,
                    ),
                    SizedBox(height: 20.px),
                    CommonWidgets.commonTextFieldForLoginSignUP(
                      controller: controller.passwordController,
                      isCard: controller.isPassword.value,
                      focusNode: controller.focusPassword,
                      obscureText: controller.hide.value,
                      hintText: StringConstants.pleaseEnterYourPassword,
                      hintTextColor: controller.isEmail.value,
                      prefixIcon: Image.asset(
                        IconConstants.icLock,
                        color: controller.isPassword.value
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onSecondary,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () => controller.clickOnEyeButton(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              controller.hide.value
                                  ? IconConstants.icView
                                  : IconConstants.icHide,
                              color: controller.isPassword.value
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).colorScheme.onSecondary,
                              height: 18.px,
                              width: 18.px,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.px),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Checkbox(
                    //           materialTapTargetSize:
                    //               MaterialTapTargetSize.shrinkWrap,
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(5.px)),
                    //           activeColor: Theme.of(context).primaryColor,
                    //           value: controller.remindMeValue.value,
                    //           onChanged: (value) {
                    //             controller.remindMeValue.value =
                    //                 !controller.remindMeValue.value;
                    //           },
                    //         ),
                    //         Text(
                    //           StringConstants.remindMe,
                    //           style: Theme.of(context)
                    //               .textTheme
                    //               .displayMedium
                    //               ?.copyWith(fontSize: 14.px),
                    //         ),
                    //       ],
                    //     ),
                    //     InkWell(
                    //       borderRadius: BorderRadius.circular(4.px),
                    //       onTap: () => controller.clickOnRestorePassword(),
                    //       child: Padding(
                    //         padding: EdgeInsets.all(8.px),
                    //         child: Text(
                    //           StringConstants.restorePassword,
                    //           style: Theme.of(context)
                    //               .textTheme
                    //               .displayMedium
                    //               ?.copyWith(
                    //                   fontSize: 14.px,
                    //                   color: Theme.of(context).primaryColor),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
