import 'dart:convert';

import 'package:flutter/widgets.dart';

import '../product_details.dart';

abstract class ProductDetailsController extends State<ProductDetails> {
  Map productData = {};

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    String data = jsonEncode(ModalRoute.of(context)!.settings.arguments);
    setState(() {
      productData = jsonDecode(data);
    });
  }
}
