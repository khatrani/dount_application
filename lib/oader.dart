import 'package:flutter/material.dart';

import 'models/food_item.dart';

class Order extends StatefulWidget {
  final FoodItems foodData;
  Order({Key key, this.foodData}) : super(key: key);

  @override
  _OaderState createState() => _OaderState();
}

class _OaderState extends State<Order> {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH5T6lx4u26VMG85zWlGviT7CDROsTM0P6Pw&usqp=CAU"),
                  color: Colors.amber,
                ),
              ),
              Expanded(
                  flex: 7,
                  child: Container(
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.star_border,
                            color: Colors.black,
                          ),
                          title: Text(
                            "star",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.pink.shade100,
                Colors.blue.shade100,
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          scaffoldkey.currentState.openDrawer();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/photos/eating-delicious-donuts-picture-id637493080?s=170667a",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Text(
                  "My Cart",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Dismissible(
                key: Key('hello'),
                background:
                    Container(color: Colors.red, child: Icon(Icons.delete)),
                secondaryBackground: Container(
                    color: Colors.green, child: Icon(Icons.arrow_back_ios)),
                resizeDuration: Duration(seconds: 5),
                child: Container(
                  margin: EdgeInsets.all(15),
                  height: 120,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$ 15.50",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Diccount :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "-20%",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$ 12.40",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Confirm",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
