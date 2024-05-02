import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import '../../../login/widets/AppbarTitlte.dart';

class LoAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String categorytitle;
  const LoAppbar({super.key,required this.categorytitle});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(20),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AppBar(
          backgroundColor: AppColor.cgrey,
          automaticallyImplyLeading: false,
         // toolbarHeight: 80,
          actions:  [
            Text(categorytitle,style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: AppColor.cgreen),)
            
         // AppbarTitle(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}

