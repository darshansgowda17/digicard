import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: 15,
                width: 150,
                child: Divider(
                  color: Colors.teal[900],
                ),
              ),
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
              GestureDetector(
                onTap: (){
                  showDialog(context: context, builder: (_)=> Center(
                    child: AlertDialog(
                      title: Center(child: Text("QR Code")),
                      content: Container(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: QrImageView(
                            data: "https://instagram.com/hemanth_sharath?igshid=MzRlODBiNWFlZA==",
                            version: QrVersions.auto,
                            size: 100.0,),
                        )
                      ),
                    ),
                  ));
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 25.0,vertical: 10.0),
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.instagram,
                      color: Colors.deepPurple,
                    ),
                    title: Text("hemanth_sharath",
                      style: TextStyle(
                          fontFamily: "Source Sans Serif",
                          color: Colors.teal[900]),),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}



