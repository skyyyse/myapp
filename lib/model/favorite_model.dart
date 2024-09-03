class Favorite {
  final int id;
  final int userId;
  final int productId;

  Favorite({required this.id, required this.userId, required this.productId});

  factory Favorite.fromJson(Map<String, dynamic> json) {
    return Favorite(
      id: json['id'],
      userId: json['user_id'],
      productId: json['product_id'],
    );
  }
}
