import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import 'package:iocn_demo_project/app/utils/app_styles.dart';
import 'package:iocn_demo_project/core/extentions/context_extension.dart';
import '../../common_widget/customizedButton.dart';
import 'controller/login_controller.dart';
import 'widets/AppbarLogin.dart';
import 'widets/BodyTiltle.dart';
import 'widets/bottomOfLogin.dart';
import 'widets/loadingindicator.dart';
import 'widets/loginDecor.dart';
import 'widets/loginTextfilel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends LoginController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cgreen,
      appBar: const LoginAppbar(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: context.width(),
                height: context.height(),
                decoration: AppDecor.tableDecoration,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const BodyTitle(title: 'لنقم بتسجيل الدخول'),
                      const SizedBox(
                        height: 50,
                      ),
                      LoginTextfield(
                        controller: phonecontroller,
                        fieldValidator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'من فضلك ادخل رقم الجوال';
                          }
                          if (value.length < 6) {
                            return 'رقم الجوال يجب الا تقل عن 6 ارقام';
                          }
                          return null;
                        },
                        fieldname: 'رقم الجوال',
                        isIcon: false,
                        isSecure: false,
                        function: () {},
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      LoginTextfield(
                        controller: passwordcontroller,
                        fieldValidator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'من فضلك ادخل كلمه المرور';
                          }
                          if (value.length < 6) {
                            return 'كلمه المرو يجب الا تقل عن 6 ارقام';
                          }
                          return null;
                        },
                        fieldname: 'كلمه المرور',
                        isIcon: true,
                        isSecure: isSecure,
                        function: () {
                          visibility();
                        },
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Center(
                        child: Text(
                          'نسيت كلمه المرور؟',
                          style: AppStyles.smalltextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomizedButton(
                        buttonname: 'تسجيل الدخول',
                        height: context.height() / 14,
                        width: context.width() / 2,
                        color: AppColor.cgreen,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        voidCallback: () {
                          login();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const BottomOfLogin(),
                      SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          sendingRequest ? const LoadingIndicator() : Container()
        ],
      ),
    );
  }
}
