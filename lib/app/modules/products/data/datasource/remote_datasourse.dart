import 'package:dio/dio.dart';
import 'package:iocn_demo_project/app/modules/products/data/models/category_model.dart';

import '../../../../../core/services/prefs.dart';

abstract class BaseRemoteDataSource {
  Future<List<CategoryModel>> getCategorybyBranchId(int branchid);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<List<CategoryModel>> getCategorybyBranchId(int branchid) async {
    try {
      var response =
          await Dio().get('https://nottr.app/api/branch/20/categories',
              options: Options(headers: {
                "authorization":
                    "Bearer ${Prefs.getString('token')}",
              }));
      return CategoryModel.fromJsonToList(response.data["data"]);
    } catch (e) {
      return [];
    }
  }
}
