import 'package:flutter/material.dart';
import 'package:tak_n/Count.dart';
import 'package:tak_n/Homescreen.dart';
import 'package:tak_n/ListMessage.dart';
import 'package:tak_n/Loginscreen.dart';
import 'package:tak_n/messageScreen.dart';
import 'package:tak_n/UserModel.dart';

void main()
{
  runApp(MyApp());

}

 class MyApp extends StatelessWidget
 {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: HomeScreen(),
     //home: LoginScreen(),
     //home: MessageSreen(),
      //home:listMessage(),
     // home:UserMod(),
      home:Count(),






    );

  }

 }