import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  const SocialButtonWidget(
      {Key? key,
      required this.imagePath,
      required this.label,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border:
              Border.fromBorderSide(BorderSide(color: AppTheme.colors.border)),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 56,
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 15),
                  Image.asset(imagePath),
                  SizedBox(width: 15),
                  Container(
                    width: 1,
                    color: AppTheme.colors.border,
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            Text(
              label,
              style: AppTheme.textStyles.buttom,
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
