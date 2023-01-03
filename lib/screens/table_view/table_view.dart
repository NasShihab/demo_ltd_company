import 'package:demo_ltd_company/reusable_widget/custom_button.dart';
import 'package:demo_ltd_company/reusable_widget/custom_color.dart';
import 'package:demo_ltd_company/reusable_widget/custom_spacing.dart';
import 'package:demo_ltd_company/screens/table_view/table_view_widget.dart';
import 'package:flutter/material.dart';

import 'drawer/my_drawer.dart';

class TableView extends StatelessWidget {
  const TableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontalPadding = 10;

    return Scaffold(
      appBar: myAppbar(),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Table(
                    border: TableBorder.all(color: myTeal),
                    defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                    columnWidths: const {
                      0: FractionColumnWidth(0.75),
                      1: FractionColumnWidth(0.25),
                    },
                    children: [
                      // Dues
                      TableRow(
                        children: [
                          Table(
                            children: [
                              headerTableRow(text: 'Dues'),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: horizontalPadding,
                                        vertical: 15),
                                    child: myRichText(
                                        'Previous Due ', '1 January 2022'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          dueColumn(duePrice: '৳ 20000'),
                        ],
                      ),
                      //Purchase
                      TableRow(
                        children: [
                          Table(
                            children: [
                              headerTableRow(text: 'Purchase'),
                              TableRow(
                                children: [
                                  invoiceTable(
                                      columnA1: 'Invoice Date',
                                      columnA2: '1 January 2022',
                                      columnB1: 'Invoice No',
                                      columnB2: '852022')
                                ],
                              ),
                              TableRow(
                                children: [
                                  Table(
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.bottom,
                                    columnWidths: const {
                                      0: FractionColumnWidth(0.70),
                                      1: FractionColumnWidth(0.30),
                                    },
                                    border: TableBorder(
                                      top: BorderSide(color: myTeal),
                                      verticalInside: BorderSide(color: myTeal),
                                    ),
                                    children: [
                                      productTableRow(
                                          itemName: 'Test Product 1',
                                          itemQuantity: '200 Pcs X 200',
                                          itemPrice: '৳ 40000'),
                                      productTableRow(
                                          itemName: 'Test Product 1',
                                          itemQuantity: '20 Pcs X 300',
                                          itemPrice: '৳ 6000'),
                                      productTableRow(
                                          itemName: 'Test Product 1',
                                          itemQuantity: '20 Pcs X 200',
                                          itemPrice: '৳ 4000'),
                                    ],
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  doubleTable(
                                      columnA1: 'Discount',
                                      columnA2: 'Vat',
                                      columnB1: '৳ 0',
                                      columnB2: '৳ 0'),
                                ],
                              ),
                              TableRow(children: [
                                doubleTable(
                                    columnA1: 'Grand Total',
                                    columnA2: 'Previous Due',
                                    columnB1: '৳ 50000',
                                    columnB2: '৳ 20000'),
                              ]),
                              TableRow(children: [
                                doubleTable(
                                    columnA1: 'Total Amount',
                                    columnA2: 'Payment',
                                    columnB1: '৳ 70000',
                                    columnB2: '৳ 40000'),
                              ]),
                              TableRow(children: [
                                singleTable(
                                    columnA1: 'Remaining Balance',
                                    columnB1: '৳ 30000')
                              ])
                            ],
                          ),
                          dueColumn(duePrice: '৳ 30000')
                        ],
                      ),
                      //Payment
                      TableRow(
                        children: [
                          Table(
                            children: [
                              headerTableRow(text: 'Payment'),
                              TableRow(
                                children: [
                                  invoiceTable(
                                      columnA1: 'Invoice Date',
                                      columnA2: '1 January 2022',
                                      columnB1: 'Invoice No',
                                      columnB2: '852022')
                                ],
                              ),
                              TableRow(
                                children: [
                                  doubleTable(
                                      columnA1: 'Discount',
                                      columnA2: 'Vat',
                                      columnB1: '৳ 0',
                                      columnB2: '৳ 0'),
                                ],
                              ),
                              TableRow(children: [
                                doubleTable(
                                    columnA1: 'Grand Total',
                                    columnA2: 'Previous Due',
                                    columnB1: '৳ 0',
                                    columnB2: '৳ 30000'),
                              ]),
                              TableRow(children: [
                                doubleTable(
                                    columnA1: 'Total Amount',
                                    columnA2: 'Payment',
                                    columnB1: '৳ 30000',
                                    columnB2: '৳ 10000'),
                              ]),
                              TableRow(children: [
                                singleTable(
                                    columnA1: 'Remaining Balance',
                                    columnB1: '৳ 20000')
                              ])
                            ],
                          ),
                          dueColumn(duePrice: '৳ 20000')
                        ],
                      ),
                      //Return
                      TableRow(
                        children: [
                          Table(
                            children: [
                              headerTableRow(text: 'Return'),
                              TableRow(
                                children: [
                                  invoiceTable(
                                      columnA1: 'Invoice Date',
                                      columnA2: '1 January 2022',
                                      columnB1: 'Invoice No',
                                      columnB2: '852022')
                                ],
                              ),
                              TableRow(
                                children: [
                                  invoiceTable(
                                      columnA1: 'Return Date',
                                      columnA2: '1 January 2022',
                                      columnB1: 'Return No',
                                      columnB2: '852022'),
                                ],
                              ),
                              TableRow(children: [
                                Table(
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.bottom,
                                  columnWidths: const {
                                    0: FractionColumnWidth(0.70),
                                    1: FractionColumnWidth(0.30),
                                  },
                                  border: TableBorder(
                                    top: BorderSide(color: myTeal),
                                    verticalInside: BorderSide(color: myTeal),
                                  ),
                                  children: [
                                    productTableRow(
                                        itemName: 'Test Product 1',
                                        itemQuantity: '100 Pcs X 50',
                                        itemPrice: '৳ 50000'),
                                  ],
                                ),
                              ]),
                              TableRow(
                                children: [
                                  doubleTable(
                                      columnA1: 'Discount',
                                      columnA2: 'Vat',
                                      columnB1: '৳ 0',
                                      columnB2: '৳ 0'),
                                ],
                              ),
                              TableRow(children: [
                                doubleTable(
                                    columnA1: 'Grand Total',
                                    columnA2: 'Previous Due',
                                    columnB1: '৳ 5000',
                                    columnB2: '৳ 20000'),
                              ]),
                              TableRow(children: [
                                doubleTable(
                                    columnA1: 'Total Amount',
                                    columnA2: 'Payment',
                                    columnB1: '৳ 15000',
                                    columnB2: '৳ 0'),
                              ]),
                              TableRow(children: [
                                singleTable(
                                    columnA1: 'Remaining Balance',
                                    columnB1: '৳ 15000')
                              ])
                            ],
                          ),
                          dueColumn(duePrice: '৳ 15000')
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            customButton(onPressed: () {}, title: 'Pay the balance'),
            height50(),
          ],
        ),
      ),
    );
  }
}
