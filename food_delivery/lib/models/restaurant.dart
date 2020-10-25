import 'package:cloud_firestore/cloud_firestore.dart';
import 'food.dart';

class Restaurant {
  static const ID = "Id";
  static const NAME = "name";
  static const AVERAGEPRICE = "averagePrice";
  static const RATING = "rating";
  static const IMAGEURL = "imageurl";
  static const POPULAR = "popular";
  static const ADDRESS = "address";
  static const MENU = "menu";

  String _id;
  String _name;
  double _averagePrice;
  int _rating;
  String _address;
  String _imageUrl;
  bool _popular;
  List<Food> _menu;
//  getters
  String get id => _id;
  String get name => _name;
  String get address => _address;
  double get averagePrice => _averagePrice;
  int get rating => _rating;
  String get imageUrl => _imageUrl;
  bool get popular => _popular;

  List<Food> get menu => _menu;

  Restaurant(
    imageUrl,
    name,
    address,
    rating,
    menu,
  ) {
    _imageUrl = imageUrl;
    _name = name;
    _address = address;
    _rating = rating;
    _menu = menu;
  }
  Restaurant.fromMap(Map<String, dynamic> map) {
    _id = map[ID];
    _name = map[NAME];
    _averagePrice = map[AVERAGEPRICE];
    _rating = map[RATING];
    _address = map[ADDRESS];
    _imageUrl = map[IMAGEURL];
    _popular = map[POPULAR];
    _menu = _convertFoodItems(map[MENU] ?? []);
  }

  Restaurant.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data());

  List<Food> _convertFoodItems(List food) {
    List<Food> convertedFood = [];
    for (Map foodItem in food) {
      convertedFood.add(Food.fromMap(foodItem));
    }
    return convertedFood;
  }
}
