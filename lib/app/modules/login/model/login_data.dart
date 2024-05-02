class LoginData {
  bool? status;
  Data? data;

  LoginData({this.status, this.data});

  LoginData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? accessToken;
  Client? client;

  Data({this.accessToken, this.client});

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    client =
        json['client'] != null ? Client.fromJson(json['client']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    if (client != null) {
      data['client'] = client!.toJson();
    }
    return data;
  }
}

class Client {
  int? id;
  int? companyId;

  Client({this.id, this.companyId});

  Client.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['company_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['company_id'] = companyId;
    return data;
  }
}
