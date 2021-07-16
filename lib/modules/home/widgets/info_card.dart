import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:app_divisao/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class InfoCardWidget extends StatelessWidget {
  final bool isLoading;
  final double value;

  const InfoCardWidget({
    Key? key,
    this.isLoading = false,
    required this.value,
  }) : super(key: key);

  Color get colorText => value >= 0 ? Color(0xFFe9f8f2) : Color(0xFFfdecef);

  String get imageType => value >= 0
      ? "assets/images/dollar-send-left.png"
      : "assets/images/dollar-send-right.png";

  Color get colorValor => value >= 0 ? Color(0xFF40B38C) : Color(0xFFE83F5B);

  String get title => value >= 0 ? "A receber" : "A pagar";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            color: Color(0xFFDCE0E5),
          ),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colorText,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              imageType,
              width: 32,
            ),
          ),
          SizedBox(height: 40),
          Text(
            title,
            style: AppTheme.textStyles.titleBtnAppBar,
          ),
          SizedBox(height: 5),
          if (isLoading) ...[
            SizedBox(
              height: 24.0,
              child: Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.grey.shade300,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
          ] else ...[
            Text(
              "R\$ $value",
              style: GoogleFonts.inter(
                  fontSize: 24, fontWeight: FontWeight.w600, color: colorValor),
            ),
          ]
        ],
      ),
    );
  }
}
