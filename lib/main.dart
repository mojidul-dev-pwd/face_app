import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Pages/LoginPage.dart';
import 'data.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login':(context)=> LoginPage()},
  ));
}