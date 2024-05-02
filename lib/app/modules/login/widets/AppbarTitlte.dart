import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "تسجيل الدخول",
              style: AppStyles.largetextstyle,
            ),
            Text("  "),
            Icon(
              Icons.arrow_forward,
              size: 30,
              color: AppColor.cwhite,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
