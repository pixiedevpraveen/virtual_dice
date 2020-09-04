import 'dart:math';
import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var myText = "Tap to Generate";
  
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Virtual Dice"),
      ),

      body: Center(
        child:Text(myText,style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.change_history),
        onPressed: (){
          myText = "Button Pressed";
          setState(() {
            int ran = Random().nextInt(6) +1;
            myText = ran.toString();
          });
        },
      ),
    );
  }
}