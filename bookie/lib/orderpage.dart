import 'package:bookie/models/Product.dart';
import 'package:bookie/payment.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

final myfont =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);

class Order extends StatelessWidget {
  final Product product;
  Order({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Payment1(),
            )),
        child: Icon(EvaIcons.arrowCircleRight),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'YOUR ORDER',
          style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1.BOOK NAME: ${product.productName.toUpperCase()}",
                style: myfont),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "2.PRICE: ₹${product.price.toUpperCase()}",
              textAlign: TextAlign.center,
              style: myfont,
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "3.SHOP NAME: SHREE IYYAPPA",
              textAlign: TextAlign.center,
              style: myfont,
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "4.LOCATION: NAMAKKAL",
              textAlign: TextAlign.center,
              style: myfont,
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "5.MODE: OFFLINE MODE",
              textAlign: TextAlign.center,
              style: myfont,
            ),
            Divider(),
            SizedBox(
              height: 15,
            ),
            Text(
              "6.DATE: 08-08-2021:16.33PM",
              textAlign: TextAlign.center,
              style: myfont,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                  child: Image(
                      height: 150, image: AssetImage('assets/ebook.png'))),
            )
          ],
        ),
      ),
    );
  }
}
