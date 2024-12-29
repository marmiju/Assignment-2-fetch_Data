class Usermodel {
  final int id;
  final String name;
  final String email;
  final bool isActive;

  Usermodel(
      {required this.id,
      required this.name,
      required this.email,
      required this.isActive});

  factory Usermodel.fromJson(Map<String, dynamic> json) {
    return Usermodel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        isActive: json['isActive']);
  }
}
