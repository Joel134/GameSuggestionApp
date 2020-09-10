import 'package:flutter/material.dart';
import 'package:gameproject/homepage.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //We take the image from the assets
                Image.asset(
                  'lib/assets/logo.png',
                  height: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                //Texts and Styling of them
                Text(
                  'Welcome to Gamers !',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.cyan, fontSize: 28),
                ),
                SizedBox(height: 20),
                Text(
                  'A one-stop portal for you to suggest and poll the latest Games',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.cyan, fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                //Our MaterialButton which when pressed will take us to a new screen named as 
                //LoginScreen
                MaterialButton(
                  elevation: 0,
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Welcome User',
                          style: TextStyle(color: Colors.cyan, fontSize: 20)),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  textColor: Colors.cyan,
                )
              ],
            ),
    );
  }
}