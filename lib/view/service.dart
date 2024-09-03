// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:ecommerce/controller/service_api.dart';
// class ConnectivityService {
//   static Future<bool> checkConnection() async {
//     var connectivityResult = await Connectivity().checkConnectivity();
//     return connectivityResult != ConnectivityResult.none;
//   }
// }
// void fetchProducts() async {
//   bool isConnected = await ConnectivityService.checkConnection();
//   final ApiService apiService = ApiService();
//   if (isConnected) {
//     try {
//       var fetchedProducts = await apiService.fetchProducts();
//       products.assignAll(fetchedProducts);
//     } catch (e) {
//       // Handle errors
//     }
//   } else {
//     // Handle no internet connection
//   }
// }
