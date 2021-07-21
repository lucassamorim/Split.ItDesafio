import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get buttom;
  TextStyle get titleAppBar;
  TextStyle get titleAppBarMembersItens;
  TextStyle get titleMembersItens;
  TextStyle get titleBtnAppBar;
  TextStyle get eventTileTitle;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTitleMoney;
  TextStyle get eventTilePeople;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;
  TextStyle get stepperNextButton;
  TextStyle get stepperNextButtonDisabled;
  TextStyle get stepperTitle;
  TextStyle get stepperSubTitle;
  TextStyle get hintTextField;
  TextStyle get textField;
  TextStyle get personTileTitle;
  TextStyle get personTileTitleSelected;
  TextStyle get paidMember;
  TextStyle get msgPaidMember;
  TextStyle get payMember;
  TextStyle get msgPayMember;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get buttom => GoogleFonts.inter(
        color: AppTheme.colors.buttom,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get title => GoogleFonts.montserrat(
      fontSize: 40, fontWeight: FontWeight.w700, color: AppTheme.colors.title);

  @override
  TextStyle get titleAppBar => GoogleFonts.montserrat(
      fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFFFFFFFF));

  @override
  TextStyle get titleAppBarMembersItens => GoogleFonts.montserrat(
      fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFF455250));

  @override
  TextStyle get titleBtnAppBar =>
      GoogleFonts.inter(fontSize: 14, color: Color(0xFF666666));

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
        color: AppTheme.colors.eventTilePeople,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileTitle,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get eventTitleMoney => GoogleFonts.inter(
        color: AppTheme.colors.eventTitleMoney,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButton,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepperSubTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperSubTitle,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperTitle,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        color: AppTheme.colors.hintTextField,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepperNextButtonDisabled => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButtonDisabled,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get personTileTitle => GoogleFonts.inter(
        color: AppTheme.colors.buttom,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get personTileTitleSelected => GoogleFonts.inter(
        color: AppTheme.colors.personTitleSelected,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get paidMember => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.backgroundSecondary,
      );

  @override
  TextStyle get payMember => GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppTheme.colors.iconRemove);

  @override
  TextStyle get msgPaidMember => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.backgroundSecondary,
      );

  @override
  TextStyle get msgPayMember => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.iconRemove,
      );

  @override
  TextStyle get titleMembersItens => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.eventTileTitle,
      );
}
