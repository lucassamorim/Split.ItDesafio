import 'package:app_divisao/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MemberWidget extends StatelessWidget {
  final String member;
  final double value;
  final String image;
  const MemberWidget(
      {Key? key,
      required this.value,
      required this.image,
      required this.member})
      : super(key: key);

  TextStyle getStyleValue() => value > 0
      ? AppTheme.textStyles.paidMember
      : AppTheme.textStyles.payMember;

  TextStyle getStyleMessage() => value > 0
      ? AppTheme.textStyles.msgPaidMember
      : AppTheme.textStyles.msgPayMember;

  String getMessage() => value > 0 ? "Já pagou" : "Falta pagar";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            image,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
        ),
        title: Text(
          member,
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              getMessage(),
              style: getStyleMessage(),
            ),
            Text(
              "R\$ $value",
              style: getStyleValue(),
            ),
          ],
        ),
      ),
    );
  }
}
