import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget)
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.WhiteA700,
        hintStyle: hintStyle ?? CustomTextStyles.WhiteA700,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 50.0,
          fieldWidth: 50.0,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(20.0),
          inactiveColor: Theme.of(context).colorScheme.primary,
          inactiveFillColor: appTheme.whiteA700,
          activeColor: Theme.of(context).colorScheme.primary,
          activeFillColor: appTheme.whiteA700,
          selectedFillColor: appTheme.whiteA700,
          selectedColor: Theme.of(context).colorScheme.primary,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
