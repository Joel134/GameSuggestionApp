import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Cart1 extends StatefulWidget {
  @override
  _Cart1State createState() => _Cart1State();
}

class _Cart1State extends State<Cart1> {
  
final firestore = FirebaseFirestore.instance;



  final _formkey = GlobalKey<FormState>();
  final List<String> _accountType=<String>[
  "Beyond of steel sky",
  'Among Trees',
  'BloodStain',
  'Bright Infinite Memory',
  'Club House',
  'Desperado',
  'Neon',
  'Rouge Company',
  'Valorant',
  'West of Dead',
  'Carrion',
  'ROKKI',
  'Mine',
  'Last of us',
  'Ghost'

];

String _title;
String _game1;
String _game2;
String _game3;
String _game4;
String _game5;

  
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      
      child: Column(
        children: <Widget> [
TextFormField(
  decoration:InputDecoration(
    fillColor: Colors.grey,
    hintText: 'Enter the Poll question?',
   ),
   validator: (val)=>val.isEmpty? 'Please enter a title':null,
 onChanged: (val)=> setState(() => _title= val),

),
SizedBox(height:20),
DropdownButtonFormField(
  value: _game1 ?? 'Beyond of steel sky',
  items: _accountType.map((val){
return DropdownMenuItem(value:val,child: Text(val),
);
  }).toList(), onChanged:(val)=>setState(()=> _game1 = val),


),
SizedBox(height:20),
DropdownButtonFormField(
  value: _game2 ?? 'Last of us',
  items: _accountType.map((val){
return DropdownMenuItem(value:val,child: Text(val),
);
  }).toList(), onChanged:(val)=>setState(()=> _game2 = val),

),
SizedBox(height:20),
DropdownButtonFormField(
  value: _game3 ?? 'Carrion',
  items: _accountType.map((val){
return DropdownMenuItem(value:val,child: Text(val),
);
  }).toList(), onChanged:(val)=>setState(()=> _game3 = val),

),SizedBox(height:20),
DropdownButtonFormField(
  value: _game4 ?? 'ROKKI',
  items: _accountType.map((val){
return DropdownMenuItem(value:val,child: Text(val),
);
  }).toList(), onChanged:(val)=>setState(()=> _game4 = val),

),SizedBox(height:20),
DropdownButtonFormField(
  value: _game5 ?? 'Ghost',
  items: _accountType.map((val){
return DropdownMenuItem(value:val,child: Text(val),
);
  }).toList(), onChanged:(val)=>setState(()=> _game5 = val),

),
RaisedButton(
color:Colors.white,
child:Text('Create Poll',style:TextStyle(color:Colors.cyan),),
onPressed: (){
 firestore.collection("users").add(
  {
    //data for database
    'Title':_title,
'Game1':_game1,
'Game2':_game2,
'Game3':_game3,
'Game4':_game4,
'Game5':_game5,





  }).then((_){
    print("success!");
  });
                      


},
)
  ],
      )
      
    );
  }
}