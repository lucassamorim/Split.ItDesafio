import 'package:flutter/material.dart';

import 'package:app_divisao/theme/app_theme.dart';

class ItensWidget extends StatelessWidget {
  final double value;
  final String item;
  final int position;
  const ItensWidget({
    Key? key,
    required this.value,
    required this.item,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  width: 45,
                  child: Text(position.toString(),
                      style: AppTheme.textStyles.textField)),
              Expanded(
                flex: 10,
                child: Text(
                  item,
                  style: AppTheme.textStyles.textField,
                ),
              ),
              Text(
                "R\$ $value",
                style: AppTheme.textStyles.textField,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0xFFCCCCCC)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
