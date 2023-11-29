import 'package:flutter/material.dart';
import 'package:vincent_s_application6/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator, style,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyLargeOnPrimaryContainer,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.bodyLarge,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(7.h),
        fillColor: fillColor ?? theme.colorScheme.onPrimaryContainer,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: appTheme.redA200,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: appTheme.redA200,
            width: 1,
          ),
        ),
        errorStyle: TextStyle(
          color: appTheme.redA200,
          fontSize: 12.fSize,
        ),
      );
}

extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillOnPrimaryContainer => OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillLightBlue => OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.h),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLinePink => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.pink10001.withOpacity(0.43),
        ),
      );
  static OutlineInputBorder get fillOnPrimaryContainerTL20 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillBlue => OutlineInputBorder(
        borderSide: BorderSide.none,
      );
}
