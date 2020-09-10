import 'package:flutter/material.dart';
import 'package:gameproject/cart1.dart';
import 'package:gameproject/user.dart';



import 'list.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Game suggestion'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_box), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => User()));})
        ],
      ),
body: ListView(
children: <Widget>[
Text('Which game do you like',style: TextStyle(fontSize:30),),
List(),
Text('Select Game',style: TextStyle(fontSize:30),),
Cart1()
],

),
      );
    
  }
}
