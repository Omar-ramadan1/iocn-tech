import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import 'package:iocn_demo_project/core/extentions/context_extension.dart';
import 'controller/product_details.dart';
import 'widgets/product_image.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends ProductDetailsController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              width: context.width(),
              height: context.height(),
              decoration: const BoxDecoration(
                color: AppColor.cgreen,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 200),
              width: context.width(),
              height: context.height(),
              decoration: const BoxDecoration(
                color: AppColor.cwhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55)),
              ),
            ),
            ProductImage(
              productImage: productData['last_image']['image'].toString(),
            ),
            Positioned(
                top: 450,
                left: 170,
                child: Center(
                    child: Text(
                  productData['title']['ar'].toString(),
                  style: TextStyle(fontSize: 25, color: AppColor.cgreen),
                ))),
          ]),
        ],
      ),
    );
  }
}
