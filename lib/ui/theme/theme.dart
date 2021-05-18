import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle titleStyle =
    const TextStyle(color: AppColors.titleTextColor, fontSize: 16);

TextStyle subTitleStyle =
    const TextStyle(color: AppColors.subTitleTextColor, fontSize: 12);

TextStyle h1Style = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

TextStyle h3Style = const TextStyle(fontSize: 20);
TextStyle h2Style = const TextStyle(fontSize: 22);
TextStyle h4Style = const TextStyle(fontSize: 18);
TextStyle h5Style = const TextStyle(fontSize: 16);
TextStyle h6Style = const TextStyle(fontSize: 14);

List<BoxShadow> shadow = <BoxShadow>[
  const BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 15),
];

EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10);

EdgeInsets hPadding = const EdgeInsets.symmetric(horizontal: 10);

double maxWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double maxHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

ThemeData lightTheme = ThemeData(
  backgroundColor: AppColors.background,
  primaryColor: AppColors.background,
  cardTheme: const CardTheme(color: AppColors.background),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: AppColors.black),
  ),
  iconTheme: const IconThemeData(color: AppColors.iconColor),
  bottomAppBarColor: AppColors.background,
  dividerColor: AppColors.lightGrey,
  primaryTextTheme:
      const TextTheme(bodyText1: TextStyle(color: AppColors.titleTextColor)),
);
