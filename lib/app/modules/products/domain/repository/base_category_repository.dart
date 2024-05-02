import '../entity/category_entity.dart';

abstract class BaseCategoryRepository{
  Future<List<CategoryEntity>> getCategorybyBranchId(int branchid);
}