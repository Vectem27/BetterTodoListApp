import 'package:flutter/material.dart';

abstract class Theme
{
  Color get backgroundColor;
  Color get subtitleBackgroundColor;

  Color get elementColor;
  Color get elementHoveredColor;
  Color get elementSelectedColor;

  Color get subtitleBorderColor;
  Color get elementBorderColor;
  Color get elementHoveredBorderColor;

  Color get solidBackgroundColor;
  Color get solidHoveredBackgroundColor;

  Color get textLowContrastColor;
  Color get textColor;
}

class DarkTheme
{
  Color get backgroundColor => Color(0xFF11131F);
  Color get subtitleBackgroundColor => Color(0xFF141726);

  Color get elementColor => Color(0xFF182449);
  Color get elementHoveredColor => Color(0xFF1D2E62);
  Color get elementSelectedColor => Color(0xFF253974);

  Color get subtitleBorderColor => Color(0xFF304384);
  Color get elementBorderColor => Color(0xFF3A4F97);
  Color get elementHoveredBorderColor => Color(0xFF435DB1);

  Color get solidBackgroundColor => Color(0xFF3E63DD);
  Color get solidHoveredBackgroundColor => Color(0xFF5472E4);

  Color get textLowContrastColor => Color(0xFF9EB1FF);
  Color get textColor => Color(0xFFD6E1FF);
}

class LightTheme
{
  Color get backgroundColor => Color(0xFFFDFDFE);
  Color get subtitleBackgroundColor => Color(0xFFF7F9FF);

  Color get elementColor => Color(0xFFEDF2FE);
  Color get elementHoveredColor => Color(0xFFE1E9FF);
  Color get elementSelectedColor => Color(0xFFD2DEFF);

  Color get subtitleBorderColor => Color(0xFFC1D0FF);
  Color get elementBorderColor => Color(0xFFABBDF9);
  Color get elementHoveredBorderColor => Color(0xFF8DA4EF);

  Color get solidBackgroundColor => Color(0xFF3E63DD);
  Color get solidHoveredBackgroundColor => Color(0xFF3358D4);

  Color get textLowContrastColor => Color(0xFF3A5BC7);
  Color get textColor => Color(0xFF1F2D5C);
}