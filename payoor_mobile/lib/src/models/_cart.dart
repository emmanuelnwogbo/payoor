import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';

class CartModel {
  final String id;
  final String itemname;
  final double price;
  final String itemid;
  int quantity;

  CartModel({
    required this.itemname,
    required this.price,
    required this.quantity,
    required this.itemid,
  }) : id = const Uuid().v4();

  // Method to increase the quantity
  void increaseQuantity(int amount) {
    quantity += amount;
  }

  // Method to reduce the quantity
  void reduceQuantity(int amount) {
    if (quantity - amount >= 0) {
      quantity -= amount;
    } else {
      // Optional: Handle a case where reducing quantity below 0 is not allowed
      print('Error: Cannot reduce quantity below 0');
    }
  }

  double get totalValue => price * quantity;
}

class UserCart extends ValueNotifier<List<CartModel>> {
  UserCart._sharedInstance() : super([]);
  static final UserCart _shared = UserCart._sharedInstance();
  factory UserCart() => _shared;

  int get length => value.length;

  void add({required CartModel cartModelItem}) {
    final cartModelItems = value;
    cartModelItems.add(cartModelItem);
    notifyListeners();
  }

  void remove({required CartModel cartModelItem}) {
    final cartModelItems = value;
    cartModelItems.remove(cartModelItem);
    notifyListeners();
  }

  void increaseQuantity({required String itemid}) {
    final item = cartModelItem(itemid: itemid);

    item?.increaseQuantity(1);
    notifyListeners();
  }

  void reduceQuantity({required String itemid}) {
    final item = cartModelItem(itemid: itemid);

    item?.reduceQuantity(1);
    notifyListeners();
  }

  double calculateTotalSum() {
    double totalSum = 0.0;
    final cartModelItems = value;
    for (final cartItem in cartModelItems) {
      totalSum += cartItem.totalValue;
    }
    return totalSum;
  }

  CartModel? cartModelItem({required String itemid}) {
    return value
        .firstWhereOrNull((cartModelItem) => cartModelItem.itemid == itemid);
  }
}
