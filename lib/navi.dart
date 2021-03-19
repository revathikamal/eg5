import 'package:flutter/material.dart';
class Todosdetails extends StatefulWidget
{
  String title;
  bool completed;
  int id,userid;
  Todosdetails({this.title,this.completed,this.id,this.userid});
  @override
  _TodosdetailsState createState() => _TodosdetailsState();

}
class _TodosdetailsState extends State<Todosdetails>
{
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first screen"),
        leading: Icon(
          Icons.menu
        ),
      ),






      body: Center(
        child: Container(width: 300,height: 300,
          child:  Column(
            children: [
              Container(child: Text(widget.title),),
              Container( child: Text(widget.completed.toString())),
              Container( child: Text(widget.id.toString())),
              Container( child: Text(widget.userid.toString())),
              Container(child: FlatButton(
                onPressed: ()
                {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),color: Colors.blue,
              ),)
            ],
          ),
        ),
      )
    );
  }
}