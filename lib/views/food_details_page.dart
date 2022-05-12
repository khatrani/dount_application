import 'package:dount_application/models/food_item.dart';
import 'package:dount_application/utils/routes.dart';
import 'package:flutter/material.dart';

class FoodDetailPage extends StatefulWidget {
  final FoodItems foodData;
  FoodDetailPage({Key key,  this.foodData}) : super(key: key);

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  List<FoodItems> food = [];
  int minimum = 0;
  int maximum = 10;
  int currentindex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.pink.shade100,
                Colors.blue.shade50,
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        SizedBox(
                          width: 270,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          child: Icon(Icons.favorite),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset(
                        "${widget.foodData.url}",
                        cacheHeight: 170,
                      ),
                    ),
                  ],
                ),
              ),
              _foodDetails(),
            ],
          ),
        ),
      ),
    );
  }

  void decrement() {
    if (currentindex > minimum) {
      setState(
        () {
          currentindex--;
        },
      );
    }
  }

  void increment() {
    if (currentindex < maximum) {
      setState(
        () {
          currentindex++;
        },
      );
    }
  }

  Widget _foodDetails() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 400,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${widget.foodData.name} ",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "${widget.foodData.desc}",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 70,
                    child: Text(
                      "${widget.foodData.icon}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    child: Text(
                      "${widget.foodData.kcl}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    child: Text(
                      "${widget.foodData.time}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${widget.foodData.text}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "\$ ${widget.foodData.price}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    child: FloatingActionButton(
                      onPressed: decrement,
                      child: Icon(Icons.remove),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      "$currentindex",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: increment,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.order);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Add to bag",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
