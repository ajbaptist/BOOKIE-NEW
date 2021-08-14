import 'package:bookie/HomePage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final myclr = TextStyle(color: Colors.black);
final blk = TextStyle(fontWeight: FontWeight.bold, color: Colors.black);
bool isDark = false;

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String? email;
  String? pass;
  String? name;

  darkMode() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'BOOKIE',
            style: myclr,
          ),
          actions: [
            IconButton(
                onPressed: darkMode,
                icon: Icon(
                  isDark == false ? EvaIcons.moon : EvaIcons.sun,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.bottomRight,
                colorFilter: ColorFilter.linearToSrgbGamma(),
                image: AssetImage('assets/readingbook.png')),
          ),
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Get Start Buddy!!'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                    fontSize: 25),
              ),
              TextFormField(
                onChanged: (value) {
                  name = value;
                },
                decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    suffixIcon: Icon(EvaIcons.person)),
              ),
              Flexible(
                child: TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Email ID',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      suffixIcon: Icon(EvaIcons.emailOutline)),
                ),
              ),
              Flexible(
                child: TextFormField(
                  onChanged: (value) {
                    pass = value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      suffixIcon: Icon(EvaIcons.eyeOff)),
                ),
              ),
              ElevatedButton.icon(
                  clipBehavior: Clip.antiAlias,
                  onPressed: () {
                    if (email!.isNotEmpty && pass!.isNotEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              email: email,
                              name: name,
                            ),
                          ));
                    }
                  },
                  icon: Icon(EvaIcons.arrowCircleRight),
                  label: Text('Lets Go')),
            ],
          ),
        ));
  }
}
