import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:iocn_demo_project/app/utils/app_colors.dart';
import 'package:iocn_demo_project/core/extentions/extensions.dart';
import '../../../../../core/services/prefs.dart';
import '../../data/datasource/remote_datasourse.dart';
import '../../data/repository/categoty_repository.dart';
import '../../domain/entity/category_entity.dart';
import '../../domain/repository/base_category_repository.dart';
import '../../domain/usecases/get_category_branch_id.dart';
import '../screens/products.dart';

abstract class ProductController extends State<Products> {
  List products = [];
  bool sendingrequst = false;

  getproducts(String i) async {
    sendingrequst = true;
    setState(() {});
    Response response = await Dio().get(
        'https://nottr.app/api/branch/20/category/$i/products?paginate=10&page=1',
        options: Options(headers: {
          "authorization": "Bearer ${Prefs.getString('token')}",
        }));
    var jsonbody = response.data;
    products = jsonbody['data']['data'];
    print('products');
    print(products);
    setState(() {
      sendingrequst = false;
    });
  }

  Color color = AppColor.purewhite;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

// ignore: non_constant_identifier_names
  List<CategoryEntity> category = [];

  void getdata() async {
    BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
    BaseCategoryRepository baseCategoryRepository =
        CategoryRepository(baseRemoteDataSource);
    category = await GetCategorybyBranchId(baseCategoryRepository).execute(25);

    setState(() {});
  }

  String categoryname = 'اختر صنفك المفضل';
  int _selectedContainerIndex = -1; // Initially no container is selected

  Widget buildColoredContainer(
      int index, String networkImage, VoidCallback voidCallback) {
    final bool isSelected = index == _selectedContainerIndex;
    final Color containerColor =
        isSelected ? AppColor.cgreen : AppColor.purewhite;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedContainerIndex = index;
        });
        voidCallback();
      },
      child: Container(
        width: context.width() / 4,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(networkImage),
              fit: BoxFit.cover,
            ),
            color: containerColor,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
      ),
    );
  }
}
