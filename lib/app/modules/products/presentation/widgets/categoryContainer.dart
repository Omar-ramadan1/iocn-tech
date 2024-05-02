import 'package:flutter/material.dart';
import 'package:iocn_demo_project/core/extentions/extensions.dart';

import '../../../../utils/app_colors.dart';

class CategoryContainer extends StatelessWidget {
  final Color color;
  final Color selected;
  final String networkImage;
  final VoidCallback voidCallback;
  const CategoryContainer({super.key,required this.color,
  required this.selected,
  required this.networkImage,required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: (){
          voidCallback();
        },
        child: Container(
          width: context.width() / 3.4,
          decoration:  BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(networkImage),
              fit: BoxFit.cover),
              
              color:color == selected ? AppColor.cgreen : AppColor.purewhite,
              borderRadius: BorderRadius.all(Radius.circular(20)
              )
              )
      ),
    )
    );
  }
}
