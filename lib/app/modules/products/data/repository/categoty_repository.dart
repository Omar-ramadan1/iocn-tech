import 'package:iocn_demo_project/app/modules/products/domain/entity/category_entity.dart';
import '../../domain/repository/base_category_repository.dart';
import '../datasource/remote_datasourse.dart';

class CategoryRepository implements  BaseCategoryRepository{
  final BaseRemoteDataSource baseRemoteDataSource;
  CategoryRepository(this.baseRemoteDataSource);


  @override
  Future<List<CategoryEntity>> getCategorybyBranchId(int branchid) async {
    return (await baseRemoteDataSource.getCategorybyBranchId(branchid));

  }

}