
import '../entity/category_entity.dart';
import '../repository/base_category_repository.dart';

class GetCategorybyBranchId{
  final BaseCategoryRepository repository;
  GetCategorybyBranchId(this.repository);
  Future<List<CategoryEntity>> execute(int branchid) async{
    return await repository.getCategorybyBranchId(branchid);
  }
}