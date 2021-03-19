import 'package:eg5/Todos.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:eg5/dbcon.dart';
Future<List<TodosClass>> gettodos() async
{
  var response= await http.get("https://jsonplaceholder.typicode.com/todos");
  List<TodosClass>Todo;
  if(response.statusCode==200)
    {
      print(response.body);
      List<dynamic> todos= jsonDecode(response.body);
      Todo=todos.map((hey) => TodosClass.fromJSON(hey)).toList();


    }
  return Todo;

}