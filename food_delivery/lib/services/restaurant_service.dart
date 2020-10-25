import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery/models/restaurant.dart';

class RestaurantService {
  String collection = "restaurants";
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void createRestaurant(Map<String, dynamic> restaurant) {
    _firestore.collection(collection).doc(restaurant["id"]).set(restaurant);
  }

  void updateRestaurantData(Map<String, dynamic> restaurant) {
    _firestore.collection(collection).doc(restaurant["id"]).update(restaurant);
  }

  Future<List<Restaurant>> getRestaurants() async =>
      _firestore.collection(collection).get().then((result) {
        List<Restaurant> restaurants = [];
        for (DocumentSnapshot restaurant in result.docs) {
          restaurants.add(Restaurant.fromSnapshot(restaurant));
        }
        return restaurants;
      });

  Future<Restaurant> getRestaurantById(int id) =>
      _firestore.collection(collection).doc(id.toString()).get().then((doc) {
        return Restaurant.fromSnapshot(doc);
      });

  Future<List<Restaurant>> searchRestaurant({String restaurantName}) {
    String searchkey =
        restaurantName[0].toUpperCase() + restaurantName.substring(1);
    return _firestore
        .collection(collection)
        .orderBy("name")
        .startAt([searchkey])
        .endAt([searchkey + '\uf8ff'])
        .get()
        .then((result) {
          List<Restaurant> restaurants = [];
          for (DocumentSnapshot restaurant in result.docs) {
            restaurants.add(Restaurant.fromSnapshot(restaurant));
          }
          return restaurants;
        });
  }
}