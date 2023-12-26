class User {
  // definisikan field dari product
  final int id;
  final String usr;
  final String pwd;
  final String name;
  final String photoUrl;
  final String created;
  final String updated;

  //constructor product
  User({
    required this.id,
    required this.usr,
    required this.pwd,
    required this.name,
    required this.photoUrl,
    required this.created,
    required this.updated,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      usr: json['username'] ?? '',
      pwd: json['password'] ?? '',
      name: json['name'] ?? '',
      photoUrl: json['photoUrl'] ?? '',
      created: json['created_at'] ?? '',
      updated: json['updated_at'] ?? '',
    );
  }
}
