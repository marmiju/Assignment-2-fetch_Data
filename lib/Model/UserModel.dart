
class Usermodel {
  final int id;
  final String name;
  final String email;
  final Company company;

    // User > Company > name ,catchPhrase , bs 

  Usermodel({
    required this.id,
    required this.name,
    required this.email,
    required this.company,
  });

  factory Usermodel.fromJson(Map<String, dynamic> json) {
    return Usermodel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      company: Company.fromJson(json['company'])
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromJson(Map<String,dynamic>json){
    return Company(name: json['name'], catchPhrase: json['catchPhrase'], bs: json['bs']);
  }
}
