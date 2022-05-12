import 'package:dount_application/models/food_item.dart';

class Data {
  static List<FoodItems> getDonutItemList() {
    List<FoodItems> list = [
      FoodItems(
        name: "White Donut",
        desc: "Sugar,pink,flout,butter,white glaze",
        price: 4.99,
        url: "assets/images/wdonut.png",
        icon: "⭐5.0",
        kcl: "🔥 536 kci",
        time: "⏰ 5-10 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
      FoodItems(
        name: "pink Donut",
        desc: "Sugar,White,flout,butter,\nstrawberry jam,\npink glaze",
        price: 5.99,
        url: "assets/images/pdonut.png",
        icon: "⭐5.0",
        kcl: "🔥 536 kci",
        time: "⏰ 5-10 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
      FoodItems(
        name: "pink Donut",
        desc: "Sugar,White,flout,butter,\nstrawberry jam,\npink glaze",
        price: 5.99,
        url: "assets/images/pdonut.png",
        icon: "⭐5.0",
        kcl: "🔥 536 kci",
        time: "⏰ 5-10 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
      FoodItems(
        name: "Delc Donut",
        desc: "Sugar,White,Cocalate,butter,\nstrawberry jam,\npink glaze",
        price: 6.00,
        url: "assets/images/delcdonut.png",
        icon: "⭐5.0",
        kcl: "🔥 500 kci",
        time: "⏰ 5-10 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
    ];

    return list;
  }

  static List<FoodItems> cakeItemList() {
    List<FoodItems> list = [
      FoodItems(
        name: "Chololate Cake",
        desc: "Sugar,Valvet,flout,butter,Chololate crime",
        price: 4.99,
        url: "assets/images/Cake.png",
        icon: "⭐5.0",
        kcl: "🔥 536 kci",
        time: "⏰ 5-10 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
      FoodItems(
        name: "Valvet Cake",
        desc: "Sugar,Chololate,flout,butter,red crime",
        price: 23.40,
        url: "assets/images/valvetcake.png",
        icon: "⭐5.0",
        kcl: "🔥 536 kci",
        time: "⏰ 5-10 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
    ];
    return list;
  }

  static List<FoodItems> coffeeItemList() {
    List<FoodItems> list = [
      FoodItems(
        name: "Black Coffee",
        desc: "Sugar,flout,butter,Chololate crime",
        price: 3.99,
        url: "assets/images/blackcoffee.png",
        icon: "⭐4.0",
        kcl: "🔥 530 kci",
        time: "⏰ 5-9 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
      FoodItems(
        name: "Flat Coffee",
        desc: "Sugar,flout,butter,red crime",
        price: 2.40,
        url: "assets/images/flatcoffee.png",
        icon: "⭐5.0",
        kcl: "🔥 536 kci",
        time: "⏰ 5-10 min",
        text:
            "The sweet and juicy combo of pink glaze and\nstawberry jem,introduce with the pink Donut\nas soon as possible.",
      ),
    ];
    return list;
  }
}
