import 'package:bookie/HomePage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final myfont =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

class Confirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.done,
                  size: 60,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Order Placed',
                style: myfont,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Your Order Placed Suceessfully Please Visit Your Store To Collect your Order',
                textAlign: TextAlign.center,
                style: myfont,
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(50)),
                  child: ListTile(
                    leading: Icon(
                      EvaIcons.map,
                      color: Colors.black,
                    ),
                    title: Text(
                      'LOCATE YOUR SHOP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                              email: 'ajbaptist18@gmail.com',
                              name: 'JOHN BAPTIST',
                            ))),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(50)),
                    child: ListTile(
                      leading: Icon(
                        EvaIcons.home,
                        color: Colors.black,
                      ),
                      title: Text(
                        'HOME',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
