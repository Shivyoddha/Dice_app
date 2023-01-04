import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i=1,j=1;
  void changeface1(){
    setState(() {
      i=Random().nextInt(6)+1;
    });
  }
  void changeface2(){
    setState(() {
      j=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blue,
        appBar:AppBar(
          backgroundColor: Colors.blue[900],
          title:Text('Dice Game'),
        ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                       changeface2();
                      },
                      child: Image.asset('images/dice$j.png')
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          changeface1();
                        });

                        },
                      child: Image.asset('images/dice$i.png')
                  ),
                ),
              ]
          ),
        ),
      ),
    );;
  }
}


 