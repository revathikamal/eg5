import 'package:eg5/Todos.dart';
import 'package:eg5/dbcon.dart';
import 'package:eg5/navi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<TodosClass>todos;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:
        FutureBuilder(
          future: gettodos(),
          builder: (context,xyz)
            {
              if(xyz.hasData)
                {
                  todos = xyz.data;

                 return ListView.builder(itemCount: todos.length,
                 itemBuilder: (context,index)
                   {
                     return Column(
                       children: [
                        InkWell
                          (onTap: (){
                          Navigator.push
                            (context,MaterialPageRoute
                            (builder: (context)=>Todosdetails(title: todos[index].title,
                            completed: todos[index].completed,
                          id: todos[index].id,
                          userid: todos[index].userId,)));
                        }
                       ,child:
                        Container
                          (child: Text(todos[index].id.toString()),),)

                       ],
                     );
                   },);
                }
              else
                {
                  return Center(child: CircularProgressIndicator(),);
                }

            },
        ),

    );
  }
}
