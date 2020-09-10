import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:gameproject/start.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Suggestion App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primaryColor: Colors.cyan,
        accentColor: Colors.white12,
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Start(),
    );
  }
}



  
  