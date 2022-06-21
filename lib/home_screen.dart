import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var num1 = 1;
  var num2 = 5;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 400,
              child: Center(
                child: Text("DICEE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset("image/dice${num1}.png"),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 400,
              child: Center(
                child: Text("Let's Roll", style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
      onTap: (){
        print('Tapped');
        var randomNumber1 = Random().nextInt(5) + 1;
        print(randomNumber1);
        setState(() {
          num1 = randomNumber1;
        });
        var randomNumber2 = Random().nextInt(5) + 1;
        setState(() {
          num2 = randomNumber2;
        });
      },
    );
  }
}
