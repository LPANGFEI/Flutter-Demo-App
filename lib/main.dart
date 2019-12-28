import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/chooseLocation.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
      // 初始化路由路由
      initialRoute: '/',
      // 路由
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation()
      },
    ));
