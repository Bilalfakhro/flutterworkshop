// Food
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/order.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/models/user.dart';

final _burrito = Food('assets/images/burrito.jpg', 'Burrito', 8.99);
final _steak = Food('assets/images/steak.jpg', 'Steak', 17.99);
final _pasta = Food('assets/images/pasta.jpg', 'Pasta', 14.99);
final _ramen = Food('assets/images/ramen.jpg', 'Ramen', 13.99);
final _pancakes = Food('assets/images/pancakes.jpg', 'Pancakes', 9.99);
final _burger = Food('assets/images/burger.jpg', 'Burger', 14.99);
final _pizza = Food('assets/images/pizza.jpg', 'Pizza', 11.99);
final _salmon = Food('assets/images/salmon.jpg', 'Salmon Salad', 12.99);
// Restaurants
final _restaurant0 = Restaurant(
  'assets/images/restaurant0.jpg',
  'Restaurant 0',
  '200 Main St, New York, NY',
  5,
  [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = Restaurant(
  'assets/images/restaurant1.jpg',
  'Restaurant 1',
  '200 Main St, New York, NY',
  4,
  [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = Restaurant(
  'assets/images/restaurant2.jpg',
  'Restaurant 2',
  '200 Main St, New York, NY',
  4,
  [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = Restaurant(
  'assets/images/restaurant3.jpg',
  'Restaurant 3',
  '200 Main St, New York, NY',
  2,
  [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = Restaurant(
  'assets/images/restaurant4.jpg',
  'Restaurant 4',
  '200 Main St, New York, NY',
  3,
  [_burrito, _ramen, _pancakes, _salmon],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  'Sam',
  'assets/images/user.jpg',
  [
    Order(
      date: 'Oct 20, 2020',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Oct 18, 2020',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Oct 15, 2020',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Oct 12, 2020',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  [
    Order(
      date: 'Oct 11, 2020',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
