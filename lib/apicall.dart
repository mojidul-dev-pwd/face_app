import 'dart:convert';

import 'user_info.dart';
import 'package:http/http.dart' as http;

Future<UserInfo> fetchUserInfo() async {
  Future<dynamic> users;

  final response = await http
      .get(Uri.parse('https://gorest.co.in/public/v2/users'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    users = jsonDecode(response.body);
    //print(users);
    //return users as Future<UserInfo>;
    return UserInfo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);


  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}