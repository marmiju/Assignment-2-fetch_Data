import 'package:fetch_data/Model/UserModel.dart';
import 'package:fetch_data/Services/ApiService.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ApiServiceProvider = Provider<Apiservice>((ref)=>Apiservice());

final UserProvider =  FutureProvider<List<Usermodel>>((ref){
   return ref.read(ApiServiceProvider).fetch_User();
});