import 'package:cloud_firestore/cloud_firestore.dart';

class Food {
  static const IMAGEURL = "imageUrl";
  static const NAME = "name";
  static const PRICE = "price";

  String _name;
  String _imageUrl;
  double _price;
//  getters

  String get name => _name;
  String get imageUrl => _imageUrl;
  double get price => _price;
  Food(
    imageUrl,
    name,
    price,
  ) {
    _name = name;
    _imageUrl = imageUrl;
    _price = price;
  }

  Food.fromMap(Map<String, dynamic> map) {
    _imageUrl = map[IMAGEURL];
    _name = map[NAME];

    _price = map[PRICE];
  }

  Food.fromSnapshot(DocumentSnapshot snapshot) : this.fromMap(snapshot.data());
}
