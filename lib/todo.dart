import 'dart:convert';
import 'package:http/http.dart' as http;

class Todo {
  final String descrption;

  Todo({required this.descrption});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(descrption: json['descrption']);
  }
}

Future<Todo> fetchTodo(http.Client client) async {
  final response = await client.get(Uri.parse('https://xxx.com/todos/1'));
  if (response.statusCode == 200) {
    return Todo.fromJson(json.decode(response.body));
  } else {
    throw Exception('failure');
  }
}
