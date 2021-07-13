import 'dart:convert';
import 'package:api_data_fetch_best/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

// class UserApi {
//   Future<List<UserModel>> fetchUser() async {
//     var res = await http.get("https://jsonplaceholder.typicode.com/users");
//     var jsonRes = json.decode(res.body) as List;
//     var obj = jsonRes.map((user) => UserModel.fromJson(user)).toList();
//     // var obj1 = jsonRes.map((user) => Address.fromJson(user)).toList();
//     return obj;
//   }
// }

class UserApi with ChangeNotifier {
  Future<List<UserModel>> fetchUser() async {
    var res = await http.get("https://jsonplaceholder.typicode.com/users");
    var jsonRes = json.decode(res.body) as List;
    var obj = jsonRes.map((user) => UserModel.fromJson(user)).toList();
    // var obj1 = jsonRes.map((user) => Address.fromJson(user)).toList();
    return obj;
  }
}
