import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';

class ProductModel {
  final String id;
  final String itemname;
  final String description;
  final double price;
  final String category;
  final int stockQuantity;
  final String imageUrl;
  final bool bestseller; // Fixed typo: Bool to bool
  final String itemid;

  ProductModel({
    required this.itemname,
    required this.description,
    required this.price,
    required this.category,
    required this.stockQuantity,
    required this.imageUrl,
    required this.bestseller,
    required this.itemid,
  }) : id = const Uuid().v4();
}

class Products extends ValueNotifier<List<ProductModel>> {
  Products._sharedInstance() : super([]);
  static final Products _shared = Products._sharedInstance();
  factory Products() => _shared;

  int get length => value.length;

  void addItem(ProductModel newItem) {
    final List<ProductModel> products = value;
    products.add(newItem);
    notifyListeners();
  }

  ProductModel? getbyItemId({required String itemid}) {
    return value.firstWhereOrNull((product) => product.itemid == itemid);
  }
}
