import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/bro.jpg"),
                ),
                Text("Hemanth Gowda",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text("DIGITAL MARKETING EXPERT",
                  style: TextStyle(
                    fontFamily: "Source Sans 3",
                    color: Colors.teal[100],
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),),
                Card(
                  color: Colors.white,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 25.0,vertical: 10.0),
                  child: ListTile(
                    leading: Icon(Icons.phone,
                      color: Colors.teal,),
                    title: Text("+91-7204497763",
                      style: TextStyle(
                          fontFamily: "Source Sans Serif",
                          color: Colors.teal[900]),),
                         ),
                    ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 25.0,vertical: 10.0),
                  child: ListTile(
                      leading: Icon(Icons.email,
                        color: Colors.teal),
                      title: Text("hemanthsharath@gmail.com",
                        style: TextStyle(
                            fontFamily: "Source Sans Serif",
                            color: Colors.teal[900]),),
                    ),
                  ),
              ],
            )
        ),
      ),
    );
  }
}



