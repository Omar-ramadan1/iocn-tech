import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class AppDecor {
  static BoxDecoration tableDecoration = const BoxDecoration(
    color: AppColor.cwhite,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(55), topRight: Radius.circular(55)),
  );
}