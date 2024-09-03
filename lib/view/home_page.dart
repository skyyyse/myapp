import 'package:ecommerce/controller/categories_controller.dart';
import 'package:ecommerce/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  final  productController = Get.put(ProductController());
  // final CategoryController categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce Home'),
      ),
      body: Column(
        children: [
          Text(productController.products.length.toString()),
          // Expanded(
          //   child: Obx(() {
          //     if (productController.products.isEmpty) {
          //       return Center(child: CircularProgressIndicator());
          //     } else {
          //       return ListView.builder(
          //         itemCount: productController.products.length,
          //         itemBuilder: (context, index) {
          //           final product = productController.products[index];
          //           return ListTile(
          //             title: Text(product.name),
          //             subtitle: Text('\$${product.price}'),
          //             leading: product.imageUrl.isNotEmpty
          //                 ? Image.network(product.imageUrl)
          //                 : null,
          //           );
          //         },
          //       );
          //     }
          //   }),
          // ),
        ],
      ),
    );
  }
}
