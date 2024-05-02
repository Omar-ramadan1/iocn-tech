import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iocn_demo_project/core/extentions/extensions.dart';
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<Position> getLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }


  Future<bool> checkLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();

    bool haspermission = false;

    if (permission == LocationPermission.denied) {
      haspermission = await checkLocation();
    } else if (permission == LocationPermission.deniedForever) {
     navigatorKey.currentContext!.showSnackBar('تاكد من السماح باشعارات الموقع الجغرافي',
          color: Colors.red.shade800);
      // Timer(const Duration(milliseconds: 3000), () => Geolocator.openAppSettings());
    } else {
      haspermission = true;
    }

    return haspermission;
  }