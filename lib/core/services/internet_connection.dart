import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectionUtilProvider  {
  StreamController connectionChangeController = StreamController();
  static final Connectivity _connectivity = Connectivity();

  static void initialize() {
    InternetConnectionChecker().onStatusChange.listen((event) {
      
    });
    _connectivity.onConnectivityChanged.listen(_connectionChange);
  }

  static bool hasConnection = false;

  static void _connectionChange(ConnectivityResult result) {
    _hasInternetInternetConnectionnn();
  }

  static Future<bool> _hasInternetInternetConnectionnn() async {
      var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      if (await InternetConnectionChecker().hasConnection) {
        hasConnection = true;
        InternetFunction.connectionChanged(true);
      } else {
        hasConnection = false;
        InternetFunction.connectionChanged(false);
      }
    } else {
      hasConnection = false;
      InternetFunction.connectionChanged(false);
    }

    return hasConnection;
  }
}



class InternetFunction {
  static bool hasInterNetConnection = false;
  
  static StreamController<bool> isConnectedToInternet =
      StreamController<bool>.broadcast();
  static connectionChanged(bool hasConnection) {
    hasInterNetConnection = hasConnection;
    isConnectedToInternet.sink.add(hasConnection);
  }
}
