import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import 'AppbarTitlte.dart';

class LoginAppbar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(110),
      child: AppBar(
        backgroundColor: AppColor.cgreen,
        automaticallyImplyLeading: false,
        toolbarHeight: 180,
        actions: const [
        AppbarTitle()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(135);
}

