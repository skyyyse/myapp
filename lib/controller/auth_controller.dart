import 'package:ecommerce/controller/service_api.dart';
import 'package:ecommerce/model/users_model.dart';
import 'package:ecommerce/service/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
//
// class auth_controller extends GetxController {
//   var isloading = true.obs;
//   var user = Rxn<User>();
//   final ApiService apiService = ApiService();
//   final int userId;
//   final username = TextEditingController();
//   final email = TextEditingController();
//   final password = TextEditingController();
//   final confirm_password = TextEditingController();
//
//   void login() {
//     try {
//       isloading.value = true;
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   void logout() {}
//   void register(){}
//   void getusers(){}
// }
//

class UserController extends GetxController {
  var user = Rxn<User>();
  final ApiService apiService = ApiService();
  final int userId;

  UserController(this.userId);

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

  void fetchUser() async {
    try {
      var fetchedUser = await apiService.fetchUser(userId);
      user.value = fetchedUser;
    } catch (e) {
      // Handle errors
    }
  }
}
