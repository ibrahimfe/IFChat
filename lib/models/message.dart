class Product {
  // definisikan field dari product
  final int id;
  final String name;
  final String photoUrl;
  final String text;
  final String created;
  final String updated;

  //constructor product
  Product({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.text,
    required this.created,
    required this.updated,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      photoUrl: json['photoUrl'] ?? '',
      text: json['text'] ?? '',
      created: json['created_at'] ?? '',
      updated: json['updated_at'] ?? '',
    );
  }
}
