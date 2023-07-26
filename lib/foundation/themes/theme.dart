  import 'package:flutter/material.dart';

import '../foundation_colors.dart';
import '../typo.dart';
  
  
  final ligthTheme =  ThemeData(
    primaryColor: ExampleColorsFoundation.primaryColor,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: ExampleColorsFoundation.primaryColorMat).copyWith(background: ExampleColorsFoundation.bgGray),
  textTheme:   const TextTheme(
    displayLarge:   TextStyle(
      fontFamily: ExampleTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w700,
      fontSize: ExampleTypographyFoundation.fontSizeH1,
      color: ExampleColorsFoundation.darkTextColors,
    ),
    displayMedium:  TextStyle(
      fontFamily: ExampleTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w900,
      fontSize: ExampleTypographyFoundation.fontSizeH2,
      color: ExampleColorsFoundation.darkTextColors,
    ),
    displaySmall: TextStyle(
      fontFamily: ExampleTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ExampleTypographyFoundation.fontSizeH3,
      color: ExampleColorsFoundation.darkTextColors,
    ),
    headlineMedium: TextStyle(
      fontFamily: ExampleTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ExampleTypographyFoundation.fontSizeH4,
      color: ExampleColorsFoundation.darkTextColors,
    ),
    headlineSmall: TextStyle(
      fontFamily: ExampleTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ExampleTypographyFoundation.fontSizeH5,
      color: ExampleColorsFoundation.darkTextColors,
    ),
    titleLarge: TextStyle(
      fontFamily: ExampleTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: ExampleTypographyFoundation.fontSizeH6,
      color: ExampleColorsFoundation.darkTextColors,
    ),
), );