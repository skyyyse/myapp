class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  final int categoryId;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.categoryId,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      description: json['description'],
      imageUrl: json['image_url'],
      categoryId: json['category_id'],
    );
  }
}
