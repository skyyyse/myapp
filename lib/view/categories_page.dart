import 'package:ecommerce/controller/categories_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CategoryPage extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Obx(() {
        if (categoryController.categories.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: categoryController.categories.length,
            itemBuilder: (context, index) {
              final category = categoryController.categories[index];
              return ListTile(
                title: Text(category.name),
              );
            },
          );
        }
      }),
    );
  }
}
