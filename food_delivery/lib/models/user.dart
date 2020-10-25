import 'package:cloud_firestore/cloud_firestore.dart';

import 'order.dart';

class User {
  static const NAME = "name";
  static const EMAIL = "email";
  static const ID = "id";
  static const PROFILEIMAGEURL = "profileImageUrl";

  String _name;
  String _email;
  String _id;

  String _profileImageUrl;
  List<Order> orders;
  List<Order> cart;

  String get name => _name;
  String get email => _email;
  String get id => _id;
  String get profileImageUrl => _profileImageUrl;
  User(
    name,
    profileImageUrl,
    orders,
    cart,
  ) {
    this._name = name;
    this._profileImageUrl = profileImageUrl;
    this.orders = orders;
    this.cart = cart;
  }
  User.fromMap(Map<String, dynamic> map) {
    _name = map[NAME];
    _email = map[EMAIL];
    _id = map[ID];
    _profileImageUrl = map[PROFILEIMAGEURL];
  }

  User.fromSnapshot(DocumentSnapshot snapshot) : this.fromMap(snapshot.data());
}
