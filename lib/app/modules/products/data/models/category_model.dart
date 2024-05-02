import 'dart:convert';
import '../../domain/entity/category_entity.dart';


class CategoryModel extends CategoryEntity {
  CategoryModel(super.id,super.title, super.isActive, super.image, super.order,
      super.createdAt, super.companyId, super.refId);

  factory CategoryModel.fromJson(Map json) {
    return CategoryModel(json["id"],Title.fromJson(json['title']) ,json['isActive'],json['image'],
        json['order'],json['createdAt'],json['companyId'],json['refId']);
  }

  static List<CategoryModel> fromJsonToList(List list) {
    List<CategoryModel> result = [];
    for (Map element in list) {

      result.add(CategoryModel.fromJson(element));
    }
    return result;
  }

    @override
      Map toJson(){
    return {
      "id" : id,
      "isActive" : isActive,
      "image" : image,
      "order" : order,
      "createdAt" : createdAt,
      "companyId" : companyId,
      "refId" : refId,
    };
  }
  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
