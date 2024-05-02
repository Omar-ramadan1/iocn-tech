import 'package:flutter/widgets.dart';
import 'package:iocn_demo_project/core/extentions/extensions.dart';

class ProductImage extends StatelessWidget {
  final String productImage;
  const ProductImage({super.key,required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Positioned(
              top: 70,
              left: 50,
              child: Center(
                child: Image.network(
                  productImage.toString(),
                  fit: BoxFit.cover,
                  width: context.width() - 70,
                  height: 320,
                ),
              ),
            );
  }
}