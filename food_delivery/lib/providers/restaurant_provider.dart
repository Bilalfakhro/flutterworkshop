import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/services/restaurant_service.dart';

class RestaurantProvider with ChangeNotifier {
  List<Restaurant> restaurants = [];
  RestaurantService _restaurantService = RestaurantService();
  Restaurant restaurantModel;
  List<Restaurant> searchedRestaurants = [];
  RestaurantProvider.initialize() {
    _loadRestaurants();
  }

  _loadRestaurants() async {
    restaurants = await _restaurantService.getRestaurants();
    notifyListeners();
  }

  loadRestaurantById(int restaurantId) async {
    restaurantModel = await _restaurantService.getRestaurantById(restaurantId);
    notifyListeners();
  }

  search(String name) async {
    searchedRestaurants =
        await _restaurantService.searchRestaurant(restaurantName: name);
    notifyListeners();
  }
}