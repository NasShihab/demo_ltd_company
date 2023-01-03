import 'package:flutter/material.dart';

class DataModel {
  String title;
  int item;
  dynamic icon;

  DataModel(this.title, this.item, this.icon);
}

List<DataModel> expansionTile = [
  DataModel('Purchase', 1, Icons.shopping_cart_checkout_outlined),
  DataModel('Sell', 2, Icons.shopping_bag_outlined),
  DataModel('Stock/Inventory', 3, Icons.inventory_2_outlined),
];

class TileModel {
  List<String> pur;

  TileModel(
    this.pur,
  );
}

List<TileModel> tileList = [
  TileModel([
    'Purchase List',
    'Order List',
    'Vat List',
    'Product Unit',
    'Purchase Report'
  ]),
  TileModel([
    'sell',
    'sell',
    'sell',
    'sell',
    'sell',
  ]),
  TileModel([
    'stock',
    'stock',
    'stock',
    'stock',
    'stock',
  ]),
];

List<String> purchase = [
  'Purchase List',
  'Order List',
  'Vat List',
  'Product Unit',
  'Purchase Report'
];

List<String> sell = [
  'Purchase List',
  'Order List',
  'Vat List',
  'Product Unit',
  'Purchase Report'
];
List<String> stock = [
  'Purchase List',
  'Order List',
  'Vat List',
  'Product Unit',
  'Purchase Report'
];
