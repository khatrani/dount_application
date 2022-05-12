import 'package:dount_application/models/data.dart';
import 'package:dount_application/models/food_item.dart';
import 'package:dount_application/oader.dart';
import 'package:dount_application/utils/routes.dart';
import 'package:flutter/material.dart';
import 'views/food_details_page.dart';

enum FoodType { Donut, Cake, coffee }

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<FoodItems> foodList = [];
  List<FoodItems> searchList = [];
  FoodType currentListType = FoodType.Donut;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    foodList = Data.getDonutItemList();
    searchList = foodList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(
        child: Container(
          height: double.infinity,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(Icons.close),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.asset(
                      "assets/images/dehome.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: const Text(
                  "Dianna Smiley",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 1,
                  width: 200,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: BottomAppBar(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.manupage);
                },
                child: Icon(
                  Icons.menu_book,
                  size: 35,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order()),
                  );
                },
                child: Icon(
                  Icons.home,
                  size: 35,
                ),
              ),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _scaffoldKey.currentState.openDrawer();
                          print("drawer");
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.menu),
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
                width: double.infinity,
                margin: EdgeInsets.only(top: 10, left: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi Anna! ",
                      style:
                          TextStyle(fontSize: 20, color: Colors.blue.shade900),
                    ),
                    Text(
                      "👋",
                      style:
                          TextStyle(fontSize: 20, color: Colors.blue.shade900),
                    ),
                    Spacer()
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      foodList = searchList
                          .where((element) =>
                              element.desc.toLowerCase().contains(val))
                          .toList();
                    });
                  },
                  decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 18),
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.search),
                      )),
                ),
              ),
              Container(
                height: 32,
                padding: EdgeInsets.only(left: 30),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryChip(
                        label: "Donut",
                        icon: 'assets/images/wdonut.png',
                        type: FoodType.Donut),
                    categoryChip(
                        label: "Cake",
                        icon: 'assets/images/Cake.png',
                        type: FoodType.Cake),
                    categoryChip(
                        label: "Coffee",
                        icon: 'assets/images/cup.png',
                        type: FoodType.coffee),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  height: 400,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: foodList.length <= 0
                      ? Center(
                          child: Text("No data"),
                        )
                      : GridView.builder(
                          itemCount: foodList.length,
                          itemBuilder: (context, index) => itemContent(
                              context: context, data: foodList[index]),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.6,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 20,
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

  Widget itemContent({BuildContext context, FoodItems data}) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodDetailPage(
                foodData: data,
              ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 450,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                '${data.url}',
                height: 100,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "${data.name} ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "${data.desc}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("\$ ${data.price}"),
                    Icon(Icons.shopping_basket),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  categoryChip({String label, String icon, FoodType type}) => GestureDetector(
        onTap: () {
          setState(() {
            switch (type) {
              case FoodType.Donut:
                currentListType = FoodType.Donut;
                foodList = Data.getDonutItemList();
                searchList = foodList;
                break;
              case FoodType.Cake:
                currentListType = FoodType.Cake;
                foodList = Data.cakeItemList();
                searchList = foodList;
                break;
              case FoodType.coffee:
                currentListType = FoodType.coffee;
                foodList = Data.coffeeItemList();
                searchList = foodList;
                break;
              default:
            }
          });
        },
        child: Container(
          margin: EdgeInsets.only(left: 10),
          height: 30,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("$icon"),
            ),
            color: Colors.white70,
            border: Border.all(
                color: Colors.blue, width: currentListType == type ? 2 : 0),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 35, top: 5),
            child: Text(
              "$label",
            ),
          ),
        ),
      );
}
