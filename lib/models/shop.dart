import 'package:flutter/material.dart';
import 'package:my_app_03/models/product.dart';

class Shop extends ChangeNotifier {
  //product for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: 'Product 1',
      price: 99.99,
      description:
          'Item Description.. more description  to describe  the product more info here will look like this ',
      imagePath: 'assets/flower1.png',
    ),
    // product 2
    Product(
        name: 'Product 2',
        price: 99.99,
        description: 'Item Description',
        imagePath: 'assets/flower2.png'),
    Product(
        name: 'Product 3',
        price: 99.99,
        description: 'Item Description',
        imagePath: 'assets/flower3.png'),
    Product(
        name: 'Product 4',
        price: 99.99,
        description: 'Item Description',
        imagePath: 'assets/flower4.png'),
  ];
  //user cart
  List<Product> _cart = [];
  //get product list
  List<Product> get shop => _shop;
  //get user cart
  List<Product> get cart => _cart;
  //add item  to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
