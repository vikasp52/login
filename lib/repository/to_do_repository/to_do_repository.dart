import 'dart:convert';

import 'package:login/repository/to_do_repository/models/to_do.dart';
import 'package:login/utils/constants.dart';
import 'package:http/http.dart' as http;

class ToDoRepository {
  Future<List<ToDos>> getToDos() async {
    String url = Constants.baseUrl + Constants.toDos;

    print('url: $url');
    final response = await http.get(Uri.parse(url));

    print('response: ${response.statusCode}');

    print('response: ${response.body}');

    try {
      if (response.statusCode == 200) {
        var parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
        var toDos = parsed.map<ToDos>((json) => ToDos.fromJson(json)).toList();

        print('toDos : $toDos');
        return toDos;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      return [];
    }
  }
}
