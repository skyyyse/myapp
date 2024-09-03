import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ecommerce/controller/service_api.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:get/get.dart';
class ProductController extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    final String baseUrl = 'http://10.0.2.2:8000/api/products';
    try {
      final response = await http.get(
        Uri.parse('$baseUrl'),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body)['products'];
        print(jsonList);
        products.assignAll(jsonList.map((json) => Product.fromJson(json)).toList());
        print('1111111111111111111');
      } else {
        Get.snackbar('Error', 'Failed to fetch posts');
      }
    } catch (e) {
      // Handle errors
    }
  }
}
