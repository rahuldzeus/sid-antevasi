import 'package:flutter/material.dart';
import 'package:sid_antevasi/screens/HomePage.dart';


void main(){
  runApp(Main());
}
class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Siddharth Kar",
      theme: ThemeData(brightness: Brightness.light,
        primaryColor: Colors.purple,
        accentColor: Colors.purple,),
      home: HomePage(),
    );
  }

}