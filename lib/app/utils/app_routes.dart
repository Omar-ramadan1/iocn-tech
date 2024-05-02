import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iocn_demo_project/app/modules/branches/business_logic/cubit/branches_cubit.dart';
import 'package:iocn_demo_project/app/modules/branches/data/repository/branches_repository.dart';
import 'package:iocn_demo_project/app/modules/branches/data/web_services/branches_web_services.dart';
import 'package:iocn_demo_project/app/modules/branches/presentation/screen/branche_screen.dart';
import 'package:iocn_demo_project/app/modules/productDetails/product_details.dart';
import 'package:iocn_demo_project/app/modules/products/presentation/screens/products.dart';
import '../modules/login/login_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String products = "/products";
  static const String productdetails = "/productDetails";
  static const String cartitem = "/cartitem";
  static const String branches = "/branches";
}

class RouteGenerator {
  late BranchesRepository branchesRepository;
  late BranchesCubit branchesCubit;

  RouteGenerator() {
    branchesRepository = BranchesRepository(Brancheswebservices());
    branchesCubit = BranchesCubit(branchesRepository);
  }

  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.products:
        return MaterialPageRoute(builder: (_) => const Products());
      case Routes.productdetails:
        return MaterialPageRoute(builder: (_) => const ProductDetails());
      case Routes.branches:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext contxt) => branchesCubit,
                child: const BrancheScreen()));

      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }

  // static Route<dynamic> unDefinedRoute() {
  //   return MaterialPageRoute(
  //       builder: (_) => Scaffold(
  //             appBar: AppBar(
  //               title: Text(AppStrings.noRouteFound.tr()),
  //             ),
  //             body: Center(child: Text(AppStrings.noRouteFound.tr())),
  //           ));
  // }
}
