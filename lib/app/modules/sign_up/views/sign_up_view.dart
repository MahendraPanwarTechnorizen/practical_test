import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../common/common_methods.dart';
import '../../../../common/common_widgets.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);

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

          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.px),
                child: Column(
                  children: [
                    SizedBox(height: 40.px),
                    CommonWidgets.appBarView(),
                    SizedBox(height: 10.px),
                    Image.asset(
                      ImageConstants.imageLogo,
                      height: 60.px,
                      width: 120.px,
                    ),
                    SizedBox(height: 20.px),
                    Text(
                      StringConstants.signupForStudents,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontSize: 24.px),
                    ),
                    SizedBox(height: 6.px),
                    Text(
                      StringConstants.pleaseFillTheFieldsBelowAndClickSubmit,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontSize: 16.px),
                    ),
                    SizedBox(height: 20.px),
                    CommonWidgets.commonTextFieldForLoginSignUP(
                      controller: controller.fullNameController,
                      isCard: controller.isFullName.value,
                      focusNode: controller.focusFullName,
                      prefixIcon: Image.asset(
                        IconConstants.icUser,
                        color: controller.isFullName.value
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onSecondary,
                      ),
                      hintText: StringConstants.pleaseEnterTheName,
                      hintTextColor: controller.isFullName.value,
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
                      hintText: StringConstants.enterEmailID,
                      hintTextColor: controller.isEmail.value,
                    ),
                    SizedBox(height: 20.px),
                    CommonWidgets.commonTextFieldForLoginSignUP(
                      controller: controller.phoneNumberController,
                      isCard: controller.isPhoneNumber.value,
                      focusNode: controller.focusPhoneNumber,
                      prefixIcon: Image.asset(
                        IconConstants.icPhone,
                        color: controller.isPhoneNumber.value
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onSecondary,
                      ),
                      hintText: StringConstants.pleaseEnterTheMobileNumber,
                      hintTextColor: controller.isPhoneNumber.value,
                    ),
                    SizedBox(height: 20.px),
                    CommonWidgets.commonTextFieldForLoginSignUP(
                      controller: controller.passwordController,
                      isCard: controller.isPassword.value,
                      focusNode: controller.focusPassword,
                      obscureText: controller.hide.value,
                      hintText: StringConstants.pleaseEnterYourPassword,
                      hintTextColor: controller.isPassword.value,
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
                    SizedBox(height: 20.px),
                    /*CommonWidgets.commonTextFieldForLoginSignUP(
                      controller: controller.companyNameController,
                      isCard: controller.isCompanyName.value,
                      focusNode: controller.focusCompanyName,
                      prefixIcon: Image.asset(
                        IconConstants.icCompany,
                        color: controller.isCompanyName.value
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onSecondary,
                      ),
                      hintText: StringConstants.companyName,
                      hintTextColor: controller.isCompanyName.value,
                    ),
                    SizedBox(height: 20.px),
                    CommonWidgets.commonTextFieldForLoginSignUP(
                      controller: controller.birthDateController,
                      isCard: controller.isBirthDate.value,
                      focusNode: controller.focusBirthDate,
                      prefixIcon: Image.asset(
                        IconConstants.icDob,
                        color: controller.isBirthDate.value
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.onSecondary,
                      ),
                      hintText: StringConstants.birthDate,
                      hintTextColor: controller.isBirthDate.value,
                    ),
                    SizedBox(height: 20.px),*/
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.px,
                          width: 24.px,
                          child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.px)),
                            activeColor: Theme.of(context).primaryColor,
                            value: controller.checkBoxValue.value,
                            onChanged: (value) {
                              controller.checkBoxValue.value =
                                  !controller.checkBoxValue.value;
                            },
                          ),
                        ),
                        Flexible(
                          child: Text(
                            StringConstants.checkBoxTitleSignUp,
                            maxLines: 20,
                            textAlign: TextAlign.justify,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: 16.px),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.px),
                    CommonWidgets.commonElevatedButton(
                      onPressed: () => controller.clickOnSignUpButton(),
                      child: Text(
                        StringConstants.signUp,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 10.px),
                    CommonWidgets.commonElevatedButton(
                      buttonColor: Theme.of(context).colorScheme.onSecondary,
                      onPressed: () => controller.clickOnCancelButton(),
                      child: Text(
                        StringConstants.cancel,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 10.px),
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
