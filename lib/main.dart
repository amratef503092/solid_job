import 'package:flutter/material.dart';
import 'dart:math' as math;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color background = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  Color textColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: background,
      body: InkWell(
        onTap: ()
        {
          setState(() {
            background = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
            textColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
            if(background == textColor){
              textColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
            }

          });
        },
        child:  Center(
          child: Text("Hey there" ,
          style: TextStyle(
            color: textColor,
            fontSize: 40,
          ),
          ),
        ),
      ),
    );
  }
}
