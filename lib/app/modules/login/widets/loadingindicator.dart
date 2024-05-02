import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: AppColor.cgreen.withOpacity(.4),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [CircularProgressIndicator(color: AppColor.cgreen,)],
                    ),
                  ),
                );
  }
}