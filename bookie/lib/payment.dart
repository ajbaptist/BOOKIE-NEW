import 'package:bookie/productDetail.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Payment1 extends StatelessWidget {
  const Payment1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PAYMENT METHOD'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/learn.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            NewWidget(
              name: 'CREDIT/DEBIT CARD',
              color: Colors.green,
              iconData: EvaIcons.creditCard,
            ),
            NewWidget(
              name: 'PAY AT STORE',
              color: Colors.blue,
              iconData: EvaIcons.shoppingBagOutline,
            )
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String? name;
  final IconData? iconData;
  final Color? color;
  NewWidget({this.color, this.iconData, this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Info();
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
              color: color!.withOpacity(0.9),
              borderRadius: BorderRadius.circular(50)),
          child: ListTile(
            leading: Icon(
              iconData,
              color: Colors.black,
            ),
            title: Text(
              name!,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
