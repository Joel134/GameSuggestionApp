import 'package:flutter/material.dart';

class Category extends StatelessWidget {
final Image image;
final String name;


Category(this.image,this.name);
  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: const EdgeInsets.all(10),
      
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
boxShadow: [
  BoxShadow(     
    blurRadius: 10,
    color:Colors.blueGrey
  )
]
         ),

        width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            image,
            SizedBox(height: 10,),
            Text(name,style:TextStyle(fontSize:10,fontWeight:FontWeight.bold)),
            
            
          ],
          
          
        ),
      )
      )
    );
  }
}
