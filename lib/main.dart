import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueAccent,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State <BallPage>{
  int ballNumber = 1;
  void changeBallFace(){
    setState(() {
      ballNumber = Random().nextInt(4)+1;

    });
  }
  Widget build(BuildContext context){
    return Center(
     child: FlatButton(
       onPressed: () {
         changeBallFace();
       },
       child: Image.asset('images/ball$ballNumber.png'),
     ),
    );
  }
  
}