import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_styles.dart';
import '../../../utils/app_colors.dart';

class BodyTitle extends StatelessWidget {
  final String title;
  const BodyTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 0),
      child: Text(
        title,
        style: AppStyles.mediumtextstyle,
      ),
    );
  }
}
