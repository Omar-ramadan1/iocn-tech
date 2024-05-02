import 'dart:convert';

class CategoryEntity {
  final int? id;
  final Title? title;
  final int? isActive;
  final String? image;
  final int? order;
  final String? createdAt;
  final int? companyId;
  final int? refId;

  CategoryEntity(this.id,this.title , this.isActive, this.image, this.order,
      this.createdAt, this.companyId, this.refId);
  Map toJson(){
    return {
      "id" : id,
      "isActive" : isActive,
      "title": title,
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

class Title {
  final String? en;
  final String? ar;

  Title(this.en, this.ar);
factory Title.fromJson(Map json) {
    return Title( json['en'],json['ar'],);
  }


  Map toJson(){
    return {
      "en":en,
      "ar":ar,
    };
  
  }
  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
