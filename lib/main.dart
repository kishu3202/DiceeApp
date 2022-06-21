import 'package:flutter/material.dart';
import 'home_screen.dart';

void main(){
  runApp(DiceeApp());
}
class DiceeApp extends StatelessWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
