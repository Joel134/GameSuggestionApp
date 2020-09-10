import 'package:flutter/material.dart';
import 'category.dart'; 


class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
    child: ListView(
      scrollDirection:Axis.horizontal ,
      children: <Widget>[
        Category(Image(image: AssetImage('lib/assets/beyondsteel.JPG')),'Beyond of steel sky'),
         Category(Image(image: AssetImage('lib/assets/among.JPG')),'Among Trees'),
          Category(Image(image: AssetImage('lib/assets/bloodstain.JPG')),'BloodStain'),
           Category(Image(image: AssetImage('lib/assets/bright.JPG')),'Bright Infinite Memory'),
            Category(Image(image: AssetImage('lib/assets/clubhouse.JPG')),'Club House'),
            Category(Image(image: AssetImage('lib/assets/desperado.JPG')),'Desperado'),
            Category(Image(image: AssetImage('lib/assets/neon.JPG')),'Neon'),
            Category(Image(image: AssetImage('lib/assets/rogue.JPG')),'Rouge Company'),
            Category(Image(image: AssetImage('lib/assets/valorant.JPG')),'Valorant'),
            Category(Image(image: AssetImage('lib/assets/westofdead.JPG')),'West of Dead'),
             Category(Image(image: AssetImage('lib/assets/carrion.JPG')),'Carrion'),
              Category(Image(image: AssetImage('lib/assets/roki.JPG')),'ROKKI'),
               Category(Image(image: AssetImage('lib/assets/mine.JPG')),'Mine'),
                Category(Image(image: AssetImage('lib/assets/lastofus.JPG')),'Last of us'),
                Category(Image(image: AssetImage('lib/assets/ghost.JPG')),'Ghost'),

            




             
   


        
      ]
      
    )
    );

    
  }
}