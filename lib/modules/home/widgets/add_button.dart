import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const AddButtonWidget({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(width: 0.7, color: AppTheme.colors.border2),
          ),
        ),
        width: 48,
        height: 56,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
