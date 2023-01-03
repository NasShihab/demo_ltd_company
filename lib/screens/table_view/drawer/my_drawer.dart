import 'package:demo_ltd_company/reusable_widget/custom_color.dart';
import 'package:flutter/material.dart';

import 'custom_expansion_tile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

var select = 0;

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: myTeal,
              boxShadow: const [
                BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    (Icons.close),
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5, bottom: 15),
                  child: Text(
                    'Demo Limited Company',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const CustomExpansionTile(),
          // const ExpansionTile(
          //   title: Text('Stock'),
          //   children: [],
          // ),
          // const ExpansionTile(
          //   title: Text('title'),
          //   children: [],
          // ),
        ],
      ),
    );
  }
}

