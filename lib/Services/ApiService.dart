import 'dart:convert';
import 'package:fetch_data/Model/UserModel.dart';
import 'package:http/http.dart' as http;

class Apiservice {
   Future<List<Usermodel>> fetch_User() async {
    final baseUrl = Uri.parse('https://jsonplaceholder.typicode.com/users');
    try {
      final response = await http.get(baseUrl);

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((element) => Usermodel.fromJson(element)).toList();
      } else {
        throw Exception('Failed to load data status code : ${response.statusCode}');
      }
    } catch (error) {
      print(error);
      throw Exception('Failed to fetch Data, error: $error');
    }
  }
}
