import 'package:ecommerce/controller/service_api.dart';
import 'package:ecommerce/model/categories_model.dart';
import 'package:get/get.dart';
class CategoryController extends GetxController {
  var categories = <Category>[].obs;
  final ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      var fetchedCategories = await apiService.fetchCategories();
      categories.assignAll(fetchedCategories);
    } catch (e) {
      // Handle errors
    }
  }
}
