import 'package:ecommerce/controller/service_api.dart';
import 'package:ecommerce/model/favorite_model.dart';
import 'package:get/get.dart';
class FavoriteController extends GetxController {
  var favorites = <Favorite>[].obs;
  final ApiService apiService = ApiService();
  final int userId;

  FavoriteController(this.userId);

  @override
  void onInit() {
    fetchFavorites();
    super.onInit();
  }

  void fetchFavorites() async {
    try {
      var fetchedFavorites = await apiService.fetchFavorites(userId);
      favorites.assignAll(fetchedFavorites);
    } catch (e) {
      // Handle errors
    }
  }
}
