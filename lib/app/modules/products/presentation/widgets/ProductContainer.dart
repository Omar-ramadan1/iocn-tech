import 'package:flutter/material.dart';
import 'package:iocn_demo_project/core/extentions/extensions.dart';
import '../../../../utils/app_colors.dart';

class ProductContainer extends StatelessWidget {
  final String networkImage;
  final String productname;
  final String productprice;
  final VoidCallback onTap;
  const ProductContainer({super.key, required this.networkImage,required this.productname,required this.productprice,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: (){
          onTap();
        },
        child: Container(
          width: context.width() / 3.4,
          decoration: const BoxDecoration(
              color: AppColor.purewhite,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Image.network(
                networkImage,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    productname,
                    style: TextStyle(fontSize: 15, color: AppColor.cgreen,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              const   Icon(Icons.favorite_border_outlined),
                  Text(
                    productprice,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
