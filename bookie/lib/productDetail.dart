import 'package:bookie/confirmation.dart';
import 'package:bookie/login.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'USER DETAIL',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.linearToSrgbGamma(),
                alignment: Alignment.bottomCenter,
                image: AssetImage('assets/manthumbs.png'))),
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintStyle: blk,
                  prefixIcon: Icon(Icons.person),
                  hintText: 'ENTER YOUR NAME'),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintStyle: blk,
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'ENTER YOUR NUMBER'),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintStyle: blk,
                  prefixIcon: Icon(Icons.details),
                  hintText: 'ENTER YOUR ADDRESS'),
            ),
            SizedBox(
              height: 260,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Confirm(),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(50)),
                  child: ListTile(
                    leading: Icon(
                      EvaIcons.shoppingCartOutline,
                      color: Colors.black,
                    ),
                    title: Text(
                      'PLACE YOUR ORDER',
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
    );
  }
}
