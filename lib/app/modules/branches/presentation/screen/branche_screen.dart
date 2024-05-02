import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iocn_demo_project/app/common_widget/customizedButton.dart';
import 'package:iocn_demo_project/app/modules/products/presentation/screens/products.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import 'package:iocn_demo_project/core/extentions/context_extension.dart';
import 'package:iocn_demo_project/core/extentions/navigation_extension.dart';
import '../../../../../core/services/prefs.dart';
import '../../business_logic/cubit/branches_cubit.dart';

class BrancheScreen extends StatefulWidget {
  const BrancheScreen({super.key});
  @override
  State<BrancheScreen> createState() => _BrancheScreenState();
}

class _BrancheScreenState extends State<BrancheScreen> {
  dynamic branches = {};
double lat = 28.0;
double long = 30.0020816;
  @override
  void initState() {
    super.initState();
    var data = BlocProvider.of<BranchesCubit>(context).getAllCharacters();
    //  lat = double.parse(Prefs.getString('altitude').toString());
    //  long = double.parse(Prefs.getString('longitude').toString());
    //  setState(() {
       
    //  });
  }

  var myMarkers = HashSet<Marker>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BranchesCubit, BranchesState>(
        builder: (context, state) {
          if (state is BranchesLoaded) {
            branches = (state).branches;
            List data = branches['data'];
            return GoogleMap(
              initialCameraPosition:  CameraPosition(
                target: LatLng(
                  double.parse(Prefs.getString('altitude').toString()),
                  double.parse(Prefs.getString('longitude').toString()),
                ),
                //   zoom: 10
              ),
              onMapCreated: (GoogleMapController googleMapController) {
                for (int i = 0; i < data.length; i++) {
                  myMarkers.add(
                    Marker(
                      markerId: MarkerId('${data[i]['id'].toString()}'),
                      position: LatLng(double.parse(data[i]['lat']),
                          double.parse(data[i]['long'])),
                      infoWindow: InfoWindow(
                          title: data[i]['title']['ar'] ?? "",
                          snippet: data[i]['address']['ar'] ?? "",
                          onTap: () {
                            context.alertDialog(
                                content: data[i]['distance'].toString(),
                                image: data[i]['image'],
                                widget: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(data[i]['status_ar']),
                                    //   Spacer(),
                                    ///Text('الفرع الان'),
                                  ],
                                ),
                                widget2: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(data[i]['phone']),
                                    // Spacer(),
                                    // Text('رقم الجوال'),
                                  ],
                                ),
                                customized: CustomizedButton(
                                    buttonname: 'اضغط هنا للدخول',
                                    width: context.width(),
                                    color: AppColor.cgreen,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    height: context.height() / 10,
                                    voidCallback: () {
                                      context.push(const Products());
                                    }));
                          }),
                    ),
                  );
                }
                setState(() {});
              },
              markers: myMarkers,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.cgreen,
              ),
            );
          }
        },
      ),
    );
  }
}
