import 'package:flutter/material.dart';

class DataModel {
  String title;
  int item;
  dynamic icon;

  DataModel(this.title, this.item, this.icon,);
}

List<DataModel> expansionTile = [
  DataModel(
    'Purchase',
    1,
    Icons.shopping_cart_checkout_outlined,
  ),
  DataModel(
    'Sell',
    2,
    Icons.shopping_bag_outlined,
  ),
  DataModel(
    'Stock/Inventory',
    3,
    Icons.inventory_2_outlined,
  ),
];
