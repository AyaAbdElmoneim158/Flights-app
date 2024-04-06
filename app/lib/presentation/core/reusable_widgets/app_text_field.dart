import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final bool? enabled;
  final FocusNode? focusNode;
  final bool? enableInteractiveSelection;
  final bool readOnly;
  final void Function()? onTap;
  final BorderRadius borderRadius;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.enabled = true,
    this.focusNode,
    this.enableInteractiveSelection,
    this.readOnly = false,
    this.onTap,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      focusNode: focusNode,
      enableInteractiveSelection: enableInteractiveSelection,
      readOnly: readOnly,
      onTap: () {
        // onTap;
        debugPrint("OnTap: showMaterialModalBottomSheet!");
      },
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide.none,
          // borderSide: const BorderSide(color: AppColors.white, width: 0),
        ),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.gray200,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.error500,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.error500,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintStyle: hintStyle ?? AppStyles.font16Gray400Regular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: backgroundColor ?? AppColors.gray25,
        filled: true,
      ),
      cursorColor: AppColors.accent,
      cursorWidth: 1,
      obscureText: isObscureText ?? false,
      style: AppStyles.font16Gray800Medium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
