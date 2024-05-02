import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iocn_demo_project/app/common_widget/customizedButton.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';

extension ContextExtension on BuildContext {
  double width() => MediaQuery.of(this).size.width;
  double height() => MediaQuery.of(this).size.height;

  void showSnackBar(
    String text, {
    Color color = Colors.blue,
  }) {
    SnackBar snackBar = SnackBar(
      backgroundColor: color,
      content: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
        ),
      ),
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void showCustomToast(String msg, {Color? color}) {
    FToast fToast = FToast();
    fToast.init(this);
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: color,
      ),
      child: Text(
        msg,
        style: const TextStyle(fontSize: 16),
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 5),
    );
  }

  Future alertDialog(
      {required String content,
      required Widget widget,
      required Widget widget2,
      required Widget customized,
      required var image}) {
    return showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColor.cwhite,
          title: Container(
            width: context.width() / 1.2,
            height: context.height() / 2.5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(branchName),
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: Image.network(image).image),
                  ],
                ),
                Divider(),
widget2,
widget
                // SizedBox(height: 20,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       content,
                //       style: const TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     Spacer(),
                //     Text(
                //       'المسافه',
                //       style: const TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     const Spacer(),
                //   ],
                // ),
                , Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ],
            ),
          ),
          actions: [customized, ],
        );
      },
    );
  }


}
