import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iocn_demo_project/app/modules/productDetails/product_details.dart';
import 'app/modules/branches/business_logic/cubit/branches_cubit.dart';
import 'app/modules/branches/data/repository/branches_repository.dart';
import 'app/modules/branches/data/web_services/branches_web_services.dart';
import 'app/modules/login/login_screen.dart';
import 'app/modules/products/presentation/screens/products.dart';
import 'app/utils/app_routes.dart';
import 'app/utils/app_thema.dart';
import 'core/services/internet_connection.dart';
import 'core/services/prefs.dart';
import 'core/services/service_locator.dart';

void main() async {
  late BranchesRepository branchesRepository;
    ConnectionUtilProvider.initialize();
  branchesRepository = BranchesRepository(Brancheswebservices());
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<BranchesCubit>(
          create: (_) => BranchesCubit(branchesRepository)),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iocn_project',
      theme: AppTheme.appTheme,
      home: const LoginScreen(),
      // home: const BrancheScreen(),
      onGenerateRoute: RouteGenerator().getRoute,
      initialRoute: Routes.loginRoute,
      routes: {
                Routes.productdetails: (context) => const ProductDetails(),

      },
    );
  }
}
