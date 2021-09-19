import 'package:flutter/material.dart';
import 'package:shop_app_plant/constants.dart';
import 'package:shop_app_plant/screen/welcome.dart';
import 'package:shop_app_plant/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme : darkThemeData(context),
      home: MyHomePage(),
    );
  }
}

