import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import 'package:iocn_demo_project/core/extentions/context_extension.dart';
import 'package:iocn_demo_project/core/extentions/navigation_extension.dart';
import '../../../../utils/app_routes.dart';
import '../controller/productcontroller.dart';
import '../widgets/ProductContainer.dart';
import '../widgets/productAppbar.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends ProductController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cgrey,
      appBar: LoAppbar(categorytitle: categoryname),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
              height: context.height() / 9,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(children: [
                    for (int i = 0; i < category.length; i++)
                      buildColoredContainer(i, category[i].image.toString(),
                          () {
                        categoryname = category[i].title!.ar.toString();
                        getproducts(category[i].id.toString());
                        setState(() {});
                      }),
                  ]),
                ],
              )),
          const SizedBox(
            height: 100,
          ),
          sendingrequst
              ? const CircularProgressIndicator(
                  color: AppColor.cgreen,
                )
              : GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 5 / 6,
                  // crossAxisSpacing: 20,
                  mainAxisSpacing: 40,
                  crossAxisCount: 2,
                  children: <Widget>[
                    for (int i = 0; i < products.length; i++)
                      ProductContainer(
                        networkImage: products[i]['last_image']['image'],
                        productname: products[i]['title']['ar'] ?? "",
                        productprice: products[i]['price'].toString(),
                        onTap: () {
                          context.pushNamed(Routes.productdetails, products[i]);
                        },
                      ),
                  ],
                ),
        ],
      ),
    );
  }
}
