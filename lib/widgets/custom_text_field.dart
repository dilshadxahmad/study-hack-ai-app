import 'package:flutter/material.dart';
import 'package:study_hack_ai/utils/english_text.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? inputType;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final int? inputLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final EdgeInsets? contentPadding;
  final bool readOnly;
  final bool obscureText;
  final void Function()? onTap;
  final String? Function(String?)? customValidator;
  final void Function(String value)? onChanged;
  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.inputType,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.inputLength,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.textAlign,
    this.contentPadding,
    this.readOnly = false,
    this.obscureText = false,
    this.onTap,
    this.customValidator,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    var textField = TextFormField(
      obscureText: obscureText,
      readOnly: readOnly,
      textAlign: textAlign ?? TextAlign.start,
      focusNode: focusNode,
      onTap: onTap,
      onChanged: onChanged,
      controller: controller,
      keyboardType: inputType,
      maxLength: inputLength,
      validator: customValidator,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        counterText: '',
        contentPadding: contentPadding,
        hintText: hintText ?? EnglishText.typeHere,
      ),
      maxLines: 1,
      style: Theme.of(context).textTheme.bodyMedium,
    );
    return textField;
  }
}
