import 'dart:convert';

import 'package:al_2/ui/webservices/user.dart';
import 'package:http/http.dart' as http;

import 'future_examples.dart';

class Webservices {
  static Future<List<User>> retrieveUsers() async {
    await Future.delayed(const Duration(seconds: 2));
    final response = await http.get(Uri.parse('https://reqres.in/api/users?page=1&per_page=12'));

    if (response.statusCode != 200) {
      switch (response.statusCode) {
        case 404:
          throw PageNotFoundException();
        case 401:
          throw AuthenticationException();
        default:
          throw Exception('Unknown error');
      }
    }

    final jsonBody = json.decode(response.body);

    final List<User> users = [];
    for (var jsonUser in jsonBody['data']) {
      final nullableUser = User.fromJson(jsonUser);
      if (nullableUser != null) users.add(nullableUser);
    }

    return users;
  }
}
