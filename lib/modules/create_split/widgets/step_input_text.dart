import 'package:flutter/material.dart';

import 'package:app_divisao/theme/app_theme.dart';

class StepInputText extends StatelessWidget {
  final void Function(String value) onChange;
  final String hintText;
  final TextAlign align;
  final EdgeInsets? padding;
  const StepInputText(
      {Key? key,
      required this.onChange,
      required this.hintText,
      this.align = TextAlign.center,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 64),
      child: TextField(
        onChanged: onChange,
        style: AppTheme.textStyles.textField,
        textAlign: align,
        cursorColor: AppTheme.colors.backgroundSecondary,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTheme.textStyles.hintTextField,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.inputBoder,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.divider,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.inputBoder,
            ),
          ),
        ),
      ),
    );
  }
}
