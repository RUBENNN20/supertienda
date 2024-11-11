class Product {
  final String id;
  final String title;
  final String image;
  final double price;
  final String store;
  final String category;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.store,
    required this.category,
  });

  // Convierte un producto en un mapa para almacenarlo en SharedPreferences
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'price': price,
      'store': store,
      'category': category,
    };
  }

  // Convierte un mapa en un objeto Product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: json['price'],
      store: json['store'],
      category: json['category'],
    );
  }
}
