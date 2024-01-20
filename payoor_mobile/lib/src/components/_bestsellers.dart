import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:payoor_mobile/src/helpers/_variables.dart';
import 'package:payoor_mobile/src/components/_sectionheader.dart';
import 'package:payoor_mobile/src/components/_bestsellercard.dart';

import 'package:payoor_mobile/src/models/_product.dart';

class BestSellers extends StatefulWidget {
  const BestSellers({super.key});

  @override
  State<BestSellers> createState() => _BestSellersState();
}

class _BestSellersState extends State<BestSellers> {
  List<dynamic> bestSellersData = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data when the page appears
  }

  Future<void> fetchData() async {
    try {
      final response = await http
          .get(Uri.parse('http://localhost:8080/bestsellers/products'));

      if (response.statusCode == 200) {
        // Request was successful
        final jsonData = json.decode(response.body);
        final items = jsonData['items'];

        for (var itemData in items) {
          // Create a ProductModel from itemData (assuming itemData is a Map)
          ProductModel newItem = ProductModel(
            itemname: itemData['itemname'],
            description: itemData['description'],
            price: itemData['price'].toDouble(),
            category: itemData['category'],
            stockQuantity: 5,
            imageUrl: itemData['imageUrl'],
            bestseller: true,
            itemid: itemData['_id'],
          );

          // Add the newItem to the Products list
          Products().addItem(newItem);
        }

        //print(items);
        setState(() {
          bestSellersData = items;
        });
      } else {
        // Request failed
        print('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle other errors
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: mainSidePadding,
        child: SizedBox(
            child: Column(
          children: [
            const SectionHeader(title: 'Best sellers', btntxt: 'See all'),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: .5,
              ),
              itemCount: bestSellersData.length,
              itemBuilder: (BuildContext context, int index) {
                final item = bestSellersData[index];

                return BestSellerCard(
                    itemname: item['itemname'],
                    price: item['price'], //'NGN${item['price']}',
                    imageUrl: item['imageUrl'],
                    itemId: item['_id']);
              },
            ),
          ],
        )));
  }
}

//
