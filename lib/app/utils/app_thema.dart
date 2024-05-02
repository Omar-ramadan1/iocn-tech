import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
class AppTheme {
  AppTheme._();
  static final ThemeData appTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.orange,
      primaryColor: AppColor.mainAppColor,
      primaryColorDark: AppColor.mainAppColor,
      hintColor: AppColor.mainAppColor,
      splashColor: Colors.white,
      dialogBackgroundColor: AppColor.mainAppColor, // AppColor.gray2c,
      appBarTheme: const AppBarTheme( backgroundColor: AppColor.mainAppColor),
      bottomAppBarTheme: const BottomAppBarTheme(color: AppColor.mainAppColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: AppColor.mainAppColor),
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor:  AppColor.mainAppColor, ),
      cupertinoOverrideTheme: const CupertinoThemeData(
          primaryColor: AppColor.mainAppColor,
          primaryContrastingColor: AppColor.mainAppColor,
          barBackgroundColor: AppColor.mainAppColor,
          scaffoldBackgroundColor: AppColor.mainAppColor,
          )
          );
}