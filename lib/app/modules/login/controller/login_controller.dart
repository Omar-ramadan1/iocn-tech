import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import 'package:iocn_demo_project/core/extentions/context_extension.dart';
import 'package:iocn_demo_project/core/extentions/navigation_extension.dart';
import 'package:iocn_demo_project/core/services/status_codes.dart';
import '../../../../core/services/prefs.dart';
import '../../../utils/app_api.dart';
import '../../../utils/app_functions.dart';
import '../../branches/presentation/screen/branche_screen.dart';
import '../login_screen.dart';
import '../model/login_data.dart';

abstract class LoginController extends State<LoginScreen> {
  final headers = <String, String>{}..addAll({
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool isSecure = false;
  bool sendingRequest = false;
  void visibility() {
    setState(() {
      isSecure = !isSecure;
    });
  }

  @override
  void initState() {
    super.initState();
    checkLocation();
  }

  login() async {
    if (!formKey.currentState!.validate()) return;
    sendingRequest = true;
    setState(() {});
    Map body = {
      'phone': phonecontroller.text,
      'password': passwordcontroller.text,
      'company_id': 3
    };

    var response = await http.post(Uri.parse(Urls.login),
        headers: headers, body: json.encode(body));
    print('response.body');
    print(response.body);
    if (response.statusCode == StatusOfcode.statusSuccess) {
      LoginData loginData = LoginData.fromJson(jsonDecode(response.body));
      Prefs.setString("token", loginData.data!.accessToken.toString());
      Position currentPosition = await getLocation();
      print(currentPosition.altitude.toString());
      print(currentPosition.longitude.toString());
      Prefs.setString("altitude", currentPosition.altitude.toString());
      Prefs.setString("longitude", currentPosition.longitude.toString());

      context.push(BrancheScreen());
      setState(() {
        sendingRequest = false;
      });
    } else {
      // ignore: use_build_context_synchronously
      setState(() {
        sendingRequest = false;
      });
      // ignore: use_build_context_synchronously
      context.showCustomToast('رقم الجوال او كلمه المرور غير صحيحه',
          color: AppColor.cgreen);
    }
  }


}
