import 'package:flutter/material.dart';

abstract class AppTheme {
  Color get accentColor;
  Color get mainColor;
  Color get secondaryColor;
  Color get backgroundColor;
  Color get headlineTextColor;
  Color get normalTextColor;
  Color get selectedTextColor;

  TextStyle get selectDateLabel => TextStyle(
        fontSize: 14,
        color: headlineTextColor,
        fontWeight: FontWeight.w500,
      );
  TextStyle get formLabel => TextStyle(
        fontSize: 16,
        color: headlineTextColor,
        fontWeight: FontWeight.w500,
      );
  TextStyle get appBarTitle => TextStyle(
        fontSize: 18,
        color: headlineTextColor,
        fontWeight: FontWeight.bold,
      );
  TextStyle get formSubtitle => TextStyle(
        fontSize: 20,
        color: accentColor,
        fontWeight: FontWeight.normal,
      );
  TextStyle get listTileTitle => TextStyle(
        fontSize: 17,
        color: selectedTextColor,
        fontWeight: FontWeight.normal,
      );
  TextStyle get listTileShortName => TextStyle(
        fontSize: 15,
        color: headlineTextColor,
        fontWeight: FontWeight.normal,
      );
  TextStyle get listTilePlantType => const TextStyle(
        fontSize: 13,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      );
  TextStyle get homePageNoPlantfInfo => TextStyle(
        fontSize: 16,
        color: accentColor,
        fontWeight: FontWeight.w400,
      );
  TextStyle get floatingButtonText => TextStyle(
        fontSize: 15,
        color: backgroundColor,
        fontWeight: FontWeight.w400,
      );

  ButtonStyle get homeFloatingButtonStyle => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(accentColor),
      );

  ButtonStyle get formFloatingButtonStyle => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(mainColor),
      );
}
