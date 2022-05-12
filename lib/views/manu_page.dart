import 'package:flutter/material.dart';

class Manupage extends StatefulWidget {
  Manupage({Key key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Manupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: Text("No"),
              title: Text("Item Name"),
              trailing: Text("Item Price"),
            ),
            ListTile(
              leading: Text("1"),
              title: Text("Donut"),
              trailing: Text("\$ 5.55"),
            ),
            ListTile(
              leading: Text("2"),
              title: Text("Pizza"),
              trailing: Text("\$ 10.55"),
            ),
            ListTile(
              leading: Text("3"),
              title: Text("Cake"),
              trailing: Text("\$ 7.55"),
            ),
            ListTile(
              leading: Text("4"),
              title: Text("Chololate"),
              trailing: Text("\$ 4.55"),
            ),
            ListTile(
              leading: Text("5"),
              title: Text("Dosha"),
              trailing: Text("\$ 11.55"),
            ),
            ListTile(
              leading: Text("6"),
              title: Text("Panipuri"),
              trailing: Text("\$ 7.55"),
            ),
          ],
        ),
      ),
    );
  }
}
