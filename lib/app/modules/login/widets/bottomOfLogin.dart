import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_styles.dart';

import '../../../utils/app_colors.dart';

class BottomOfLogin extends StatelessWidget {
  const BottomOfLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'تسجيل جديد',
          style: AppStyles.customizedtextstyle,
        ),
        Text(
          ' ليس لديك حساب؟',
          style: TextStyle(fontSize: 16, color: AppColor.grey),
        ),
      ],
    );
  }
}
