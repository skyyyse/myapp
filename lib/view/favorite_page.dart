import 'package:ecommerce/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FavoritePage extends StatelessWidget {
  final int userId;
  FavoritePage({required this.userId});

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.put(FavoriteController(userId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Obx(() {
        if (favoriteController.favorites.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: favoriteController.favorites.length,
            itemBuilder: (context, index) {
              final favorite = favoriteController.favorites[index];
              return ListTile(
                title: Text('Favorite ID: ${favorite.id}'),
              );
            },
          );
        }
      }),
    );
  }
}
