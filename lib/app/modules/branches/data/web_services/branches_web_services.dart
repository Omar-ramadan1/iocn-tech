import 'package:dio/dio.dart';

import '../../../../../core/services/prefs.dart';
import '../../../../utils/app_api.dart';

class Brancheswebservices{
  late Dio dio;


  Brancheswebservices() {
    BaseOptions options = BaseOptions(
      baseUrl: Urls.baseUrl,
      receiveDataWhenStatusError: true,
    );

    dio = Dio(options);
  }


 Future<dynamic> getAllbranches() async {
    try {
      Response response = await dio.get('${Urls.branches}?lat=${Prefs.getString('altitude')}&long=${Prefs.getString('longitude')}&company_id=3',
      options:Options(
        headers: {
        "authorization": "Bearer ${Prefs.getString('token')}",
        }
      ) 
      );
      print('response.data.toString()');
      print(response.data.toString());
      return response.data;
    } catch (e) {
            print('e.toString()');

      print(e.toString());
      return [];
    }
    
  }
}