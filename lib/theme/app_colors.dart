import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;
  Color get title;
  Color get buttom;
  Color get border;
  Color get border2;
  Color get error;
  Color get iconBackground1;
  Color get eventTileTitle;
  Color get eventTileSubtitle;
  Color get eventTitleMoney;
  Color get eventTilePeople;
  Color get stepperIndicatorPrimary;
  Color get stepperIndicatorSecondary;
  Color get backButton;
  Color get divider;
  Color get stepperNextButton;
  Color get stepperNextButtonDisabled;
  Color get stepperTitle;
  Color get stepperSubTitle;
  Color get hintTextField;
  Color get textField;
  Color get inputBoder;
  Color get iconAdd;
  Color get iconRemove;
  Color get personTitleSelected;
}

class AppColorDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get buttom => Color(0xFF666666);

  @override
  Color get border => Color(0xFF666666);

  @override
  Color get error => Color(0xFFE83F5B);

  @override
  Color get border2 => Color(0xFFFFFFFF);

  @override
  Color get iconBackground1 => Color(0xFF45CC93);

  @override
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  Color get eventTileSubtitle => Color(0xFF666666);

  @override
  Color get eventTileTitle => Color(0xFF455250);

  @override
  Color get eventTitleMoney => Color(0xFF666666);

  @override
  Color get stepperIndicatorPrimary => Color(0xFF3CAB82);

  @override
  Color get stepperIndicatorSecondary => Color(0xFF666666);

  @override
  Color get backButton => Color(0xFF666666);

  @override
  Color get stepperNextButton => Color(0xFF455250);

  @override
  Color get stepperSubTitle => Color(0xFF455250);

  @override
  Color get stepperTitle => Color(0xFF455250);

  @override
  Color get hintTextField => Color(0xFF666666);

  @override
  Color get textField => Color(0xFF455250);

  @override
  Color get divider => Color(0xFF455250);

  @override
  Color get inputBoder => Color(0xFF455250);

  @override
  Color get stepperNextButtonDisabled => Color(0xFF666666);

  @override
  Color get iconAdd => Color(0xFF40B28C);

  @override
  Color get iconRemove => Color(0xFFE83F5B);

  @override
  Color get personTitleSelected => Color(0xFF455250);
}
