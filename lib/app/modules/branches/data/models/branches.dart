class Branches {
  bool? status;
  String? msg;
  List<Data>? data;

  Branches({this.status, this.msg, this.data});

  Branches.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }


}

class Data {
  int? id;
  Title? title;
  String? phone;
  String? lat;
  String? long;
  String? eveningTimeFrom;
  String? eveningTimeTo;
  String? popupPhoto;
  Title? address;
  int? companyId;
  String? statusAr;
  double? distance;
  int? inFavourite;
  double? rate;
  List<BranchOrderMethod>? branchOrderMethod;
  Company? company;
  int? isActive;
  String? image;
  String? createdAt;
  String? updatedAt;
  String? instagram;
  String? twitter;
  int? minTotalOrder;
  String? deliveryTimeFrom;
  String? deliveryTimeTo;
  String? code;
  String? taxNumber;
  Null? qrImage;
  int? isWaitingList;
  int? waitingListNotifyCount;
  int? refId;
  String? statusEn;
  int? statusNo;
  Title? popupCategoryTitle;
  String? morningTimeFrom;
  String? morningTimeTo;
  Null? busyAt;
  String? busyHours;
  int? popupCategoryId;
  int? popupProductId;
  int? showPopup;

  Data(
      {this.id,
      this.title,
      this.phone,
      this.lat,
      this.long,
      this.eveningTimeFrom,
      this.eveningTimeTo,
      this.popupPhoto,
      this.address,
      this.companyId,
      this.statusAr,
      this.distance,
      this.inFavourite,
      this.rate,
      this.branchOrderMethod,
      this.company,
      this.isActive,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.instagram,
      this.twitter,
      this.minTotalOrder,
      this.deliveryTimeFrom,
      this.deliveryTimeTo,
      this.code,
      this.taxNumber,
      this.qrImage,
      this.isWaitingList,
      this.waitingListNotifyCount,
      this.refId,
      this.statusEn,
      this.statusNo,
      this.popupCategoryTitle,
      this.morningTimeFrom,
      this.morningTimeTo,
      this.busyAt,
      this.busyHours,
      this.popupCategoryId,
      this.popupProductId,
      this.showPopup});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    phone = json['phone'];
    lat = json['lat'];
    long = json['long'];
    eveningTimeFrom = json['evening_time_from'];
    eveningTimeTo = json['evening_time_to'];
    popupPhoto = json['popup_photo'];
    address =
        json['address'] != null ? new Title.fromJson(json['address']) : null;
    companyId = json['company_id'];
    statusAr = json['status_ar'];
    distance = json['distance'];
    inFavourite = json['in_favourite'];
    rate = json['rate'];
    if (json['branch_order_method'] != null) {
      branchOrderMethod = <BranchOrderMethod>[];
      json['branch_order_method'].forEach((v) {
        branchOrderMethod!.add(new BranchOrderMethod.fromJson(v));
      });
    }
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    isActive = json['is_active'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    instagram = json['instagram'];
    twitter = json['twitter'];
    minTotalOrder = json['min_total_order'];
    deliveryTimeFrom = json['delivery_time_from'];
    deliveryTimeTo = json['delivery_time_to'];
    code = json['code'];
    taxNumber = json['tax_number'];
    qrImage = json['qr_image'];
    isWaitingList = json['is_waiting_list'];
    waitingListNotifyCount = json['waiting_list_notify_count'];
    refId = json['ref_id'];
    statusEn = json['status_en'];
    statusNo = json['status_no'];
    popupCategoryTitle = json['popup_category_title'] != null
        ? new Title.fromJson(json['popup_category_title'])
        : null;
    morningTimeFrom = json['morning_time_from'];
    morningTimeTo = json['morning_time_to'];
    busyAt = json['busy_at'];
    busyHours = json['busy_hours'];
    popupCategoryId = json['popup_category_id'];
    popupProductId = json['popup_product_id'];
    showPopup = json['show_popup'];
  }

  
}

class Title {
  String? en;
  String? ar;

  Title({this.en, this.ar});

  Title.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['ar'] = this.ar;
    return data;
  }
}

class BranchOrderMethod {
  int? id;
  Title? title;
  int? isActive;
  String? image;
  String? createdAt;
  Pivot? pivot;

  BranchOrderMethod(
      {this.id,
      this.title,
      this.isActive,
      this.image,
      this.createdAt,
      this.pivot});

  BranchOrderMethod.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    isActive = json['is_active'];
    image = json['image'];
    createdAt = json['created_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

}

class Pivot {
  int? branchId;
  int? orderMethodId;

  Pivot({this.branchId, this.orderMethodId});

  Pivot.fromJson(Map<String, dynamic> json) {
    branchId = json['branch_id'];
    orderMethodId = json['order_method_id'];
  }

}

class Company {
  int? id;
  Title? title;
  String? phone;
  int? isActive;
  String? image;
  String? createdAt;
  String? updatedAt;
  Title? about;
  Title? termsConditions;
  String? email;

  Company(
      {this.id,
      this.title,
      this.phone,
      this.isActive,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.about,
      this.termsConditions,
      this.email});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    phone = json['phone'];
    isActive = json['is_active'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    about = json['about'] != null ? new Title.fromJson(json['about']) : null;
    termsConditions = json['terms_conditions'] != null
        ? new Title.fromJson(json['terms_conditions'])
        : null;
    email = json['email'];
  }

  
}
