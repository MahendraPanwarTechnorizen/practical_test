import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app/data/constants/icons_constant.dart';

class CommonWidgets {
  static Widget appBarView({String? title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset(IconConstants.icBack,height:  30.px,width: 30.px,)),
        Text(
          title ?? '',
          style: Theme.of(Get.context!)
              .textTheme
              .displayMedium
              ?.copyWith(fontSize: 20.px),
        ),
        const SizedBox(),
      ],
    );
  }

  ///For Full Size Use In Column Not In ROW
  static Widget commonElevatedButton(
      {double? height,
      double? width,
      EdgeInsetsGeometry? buttonMargin,
      EdgeInsetsGeometry? contentPadding,
      double? borderRadius,
      Color? splashColor,
      bool wantContentSizeButton = false,
      Color? buttonColor,
      TextStyle? textStyle,
      double? elevation,
      required VoidCallback onPressed,
      required Widget child}) {
    return Container(
      height: wantContentSizeButton ? height : 50.px,
      width: wantContentSizeButton ? width : double.infinity,
      margin: buttonMargin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 4.px),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0.px,
          padding: contentPadding,
          textStyle: textStyle ??
              Theme.of(Get.context!)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 4.px),
          ),
          backgroundColor:
              buttonColor ?? Theme.of(Get.context!).colorScheme.primary,
          foregroundColor:
              splashColor ?? Theme.of(Get.context!).scaffoldBackgroundColor,
          shadowColor: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            child,
            Image.asset(
              IconConstants.icRightArrow,
              width: 24.px,
              height: 24.px,
            ),
          ],
        ),
      ),
    );
  }

  static Widget commonTextFieldForLoginSignUP(
      {double? elevation,
      String? hintText,
      String? labelText,
      String? errorText,
      EdgeInsetsGeometry? contentPadding,
      TextEditingController? controller,
      int? maxLines,
      double? cursorHeight,
      bool wantBorder = false,
      ValueChanged<String>? onChanged,
      FormFieldValidator<String>? validator,
      Color? fillColor,
      Color? initialBorderColor,
      double? initialBorderWidth,
      TextInputType? keyboardType,
      double? borderRadius,
      double? maxHeight,
      TextStyle? hintStyle,
      TextStyle? style,
      TextStyle? labelStyle,
      TextStyle? errorStyle,
      List<TextInputFormatter>? inputFormatters,
      TextCapitalization textCapitalization = TextCapitalization.none,
      bool autofocus = false,
      bool readOnly = false,
      bool hintTextColor = false,
      Widget? suffixIcon,
      Widget? prefixIcon,
      AutovalidateMode? autoValidateMode,
      int? maxLength,
      GestureTapCallback? onTap,
      bool obscureText = false,
      FocusNode? focusNode,
      bool? filled,
      bool isCard = false}) {
    return Material(
      elevation: isCard ? 4 : 0,
      borderRadius: BorderRadius.circular(15.px),
      shadowColor: Theme.of(Get.context!).primaryColor,
      child: TextFormField(
        focusNode: focusNode,
        obscureText: obscureText,
        onTap: onTap,
        maxLength: maxLength,
        cursorHeight: cursorHeight,
        cursorColor: Theme.of(Get.context!).primaryColor,
        autovalidateMode: autoValidateMode,
        controller: controller,
        onChanged: onChanged ??
            (value) {
              value = value.trim();
              if (value.isEmpty || value.replaceAll(" ", "").isEmpty) {
                controller?.text = "";
              }
            },
        validator: validator,
        keyboardType: keyboardType ?? TextInputType.streetAddress,
        readOnly: readOnly,
        autofocus: autofocus,
        inputFormatters: inputFormatters,
        textCapitalization: textCapitalization,
        style: style ??
            Theme.of(Get.context!).textTheme.titleMedium?.copyWith(
                  color: Theme.of(Get.context!).primaryColor,
                ),
        decoration: InputDecoration(
          errorText: errorText,
          counterText: '',
          errorStyle: errorStyle ??
              Theme.of(Get.context!)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(Get.context!).colorScheme.error),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          labelText: labelText,
          labelStyle: labelStyle,
          fillColor:
              fillColor ?? Theme.of(Get.context!).scaffoldBackgroundColor,
          filled: filled ?? true,
          contentPadding:
              contentPadding ?? EdgeInsets.symmetric(horizontal: 20.px),
          hintStyle: hintStyle ??
              Theme.of(Get.context!).textTheme.titleMedium?.copyWith(
                  color: hintTextColor
                      ? Theme.of(Get.context!).primaryColor
                      : Theme.of(Get.context!).textTheme.titleMedium?.color),
          disabledBorder: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(
                    color: Theme.of(Get.context!).colorScheme.onSurface,
                    width: 2.px)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadius ?? 15.px,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: wantBorder
                  ? BorderSide(
                      color: Theme.of(Get.context!).primaryColor, width: 2.px)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius ?? 4.px)),
          enabledBorder: OutlineInputBorder(
              borderSide: wantBorder
                  ? BorderSide(
                      color: initialBorderColor ??
                          Theme.of(Get.context!).primaryColor,
                      width: initialBorderWidth ?? 2.px)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius ?? 4.px)),
          errorBorder: OutlineInputBorder(
              borderSide: wantBorder
                  ? BorderSide(
                      color: Theme.of(Get.context!).colorScheme.onError,
                      width: 2.px)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius ?? 4.px)),
        ),
      ),
    );
  }

  static pinCode({
    StreamController<ErrorAnimationType>? errorAnimationController,
    TextEditingController? controller,
  }) {
    return PinCodeTextField(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      appContext: (Get.context!),
      length: 4,
      hintStyle: Theme.of(Get.context!).textTheme.titleMedium,
      hintCharacter: "_",
      blinkDuration: const Duration(milliseconds: 200),
      enablePinAutofill: true,
      textStyle: Theme.of(Get.context!).textTheme.headlineMedium?.copyWith(
          color: Theme.of(Get.context!).textTheme.titleMedium?.color,
          fontSize: 20.px),
      cursorColor: Theme.of(Get.context!).colorScheme.primary,
      keyboardType: TextInputType.number,
      readOnly: false,
      blinkWhenObscuring: true,
      autoDisposeControllers: false,
      animationType: AnimationType.none,
      pinTheme: PinTheme(
        inactiveColor: Colors.grey.withOpacity(0.8),
        inactiveFillColor: Colors.transparent,
        activeColor: Colors.grey.withOpacity(0.8),
        activeFillColor: Colors.transparent,
        selectedColor: Theme.of(Get.context!).colorScheme.primary,
        selectedFillColor: Colors.transparent,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      //errorAnimationController: errorAnimationController,
      controller: controller,
      onChanged: (value) {
        //  currentText.value = value;
      },
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}

enum ErrorAnimationType { shake, clear }
