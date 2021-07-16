import 'package:flutter/material.dart';

enum IconDolarType { send, receive }

class IconDolarWidget extends StatelessWidget {
  final IconDolarType type;

  const IconDolarWidget({Key? key, required this.type}) : super(key: key);

  String get imagePath =>
      "assets/images/dollar-send-${type == IconDolarType.receive ? 'left' : 'right'}.png";

  Color get backgroundColor =>
      type == IconDolarType.receive ? Color(0xFFe9f8f2) : Color(0xFFfdecef);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(10),
      child: Image.asset(
        imagePath,
        width: 32,
      ),
    );
  }
}
