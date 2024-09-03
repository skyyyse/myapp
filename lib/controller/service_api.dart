import 'dart:convert';
import 'package:ecommerce/model/categories_model.dart';
import 'package:ecommerce/model/favorite_model.dart';
import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/model/users_model.dart';
import 'package:http/http.dart' as http;


class ApiService {
  final String baseUrl = 'http://10.0.2.2:8000/api';
  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/categories'));
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      print('object');
      return jsonList.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products'));
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<List<Favorite>> fetchFavorites(int userId) async {
    final response = await http.get(Uri.parse('$baseUrl/favorites/users=$userId'));
    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Favorite.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load favorites');
    }
  }

  Future<User> fetchUser(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$id'));
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }
}