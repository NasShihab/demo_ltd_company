import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../reusable_widget/custom_color.dart';
import '../../reusable_widget/custom_spacing.dart';

AppBar myAppbar() => AppBar(
      title: const Text('Table Data'),
      centerTitle: true,
      backgroundColor: myTeal,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: myTeal
      ),
    );

myRichText(
  String text1,
  String text2,
) =>
    RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 16),
        children: [
          TextSpan(
            text: text1,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: text2,
          ),
        ],
      ),
    );

myBoldText({
  double fontSize = 16,
  dynamic color = Colors.black,
  required String text,
  TextAlign textAlign = TextAlign.start,
}) =>
    Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: fontSize,
      ),
      textAlign: textAlign,
    );

myHeaderText({
  double size = 14,
  dynamic color = Colors.white,
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
          fontSize: size,
        ),
      ),
    );

headerTableRow({
  double size = 16,
  dynamic color = Colors.white,
  required String text,
}) =>
    TableRow(
      decoration: BoxDecoration(color: myTeal),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: size,
            ),
          ),
        ),
      ],
    );

dueColumn({required String duePrice}) =>Container(
  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  child: Column(
    children: [
      const Text(
        'Due',
        style: TextStyle(fontSize: 16),
      ),
      Text(
        duePrice,
        style: const TextStyle(
            color: Colors.deepOrange, fontWeight: FontWeight.bold),
      ),
    ],
  ),
);

nas(BuildContext context,{required String duePrice}) =>
    Container(
      padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(color: myTeal),
      height: MediaQuery.of(context).size.width,
      child: Table(
        children: [
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    const Text(
                      'Due',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      duePrice,
                      style: const TextStyle(
                          color: Colors.deepOrange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

productTableRow({
  required String itemName,
  required String itemQuantity,
  required String itemPrice,
}) =>
    TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myBoldText(
                text: itemName,
              ),
              Text(
                itemQuantity,
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              itemPrice,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )),
      ],
    );

Table doubleTable({
  required String columnA1,
  required String columnA2,
  required String columnB1,
  required String columnB2,
}) =>
    Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      columnWidths: const {
        0: FractionColumnWidth(0.70),
        1: FractionColumnWidth(0.30),
      },
      border: TableBorder(
        top: BorderSide(color: myTeal),
        verticalInside: BorderSide(color: myTeal),
      ),
      children: [
        TableRow(children: [
          myPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myBoldText(text: columnA1),
                height5(),
                myBoldText(text: columnA2),
              ],
            ),
          ),
          myPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                myBoldText(text: columnB1),
                height5(),
                myBoldText(text: columnB2),
              ],
            ),
          ),
        ]),
      ],
    );

Table singleTable({
  required String columnA1,
  required String columnB1,
}) =>
    Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      columnWidths: const {
        0: FractionColumnWidth(0.70),
        1: FractionColumnWidth(0.30),
      },
      border: TableBorder(
        top: BorderSide(color: myTeal),
        verticalInside: BorderSide(color: myTeal),
      ),
      children: [
        TableRow(children: [
          myPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myBoldText(text: columnA1),
              ],
            ),
          ),
          myPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                myBoldText(text: columnB1),
              ],
            ),
          ),
        ]),
      ],
    );

Table invoiceTable({
  required String columnA1,
  required String columnA2,
  required String columnB1,
  required String columnB2,
}) =>
    Table(
      columnWidths: const {
        0: FractionColumnWidth(0.20),
        1: FractionColumnWidth(0.50),
      },
      border: TableBorder(
        bottom: BorderSide(color: myTeal)
      ),
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.teal[50]),
          children: [
            myPadding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                columnA1,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            myPadding(
              padding: const EdgeInsets.only(top: 10),
              child: myBoldText(text: columnA2, fontSize: 14),
            ),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(color: Colors.teal[50]),
          children: [
            myPadding(
              padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
              child: Text(
                columnB1,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            myPadding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: myBoldText(text: columnB2, fontSize: 14),
            ),
          ],
        ),
      ],
    );
