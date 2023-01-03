import 'package:flutter/material.dart';

import '../../../reusable_widget/custom_color.dart';
import 'model/my_model.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({super.key});

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

var select = 0;

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: expansionTile.length,
        itemBuilder: (context, index) => ListTileTheme(
              tileColor: select == expansionTile[index].item
                  ? Colors.teal[50]
                  : Colors.white,
              child: ExpansionTile(
                onExpansionChanged: (bool selected) {
                  setState(() {
                    if (selected == true) {
                      select = expansionTile[index].item;
                    } else {
                      select = 0;
                    }
                  });
                },
                childrenPadding: const EdgeInsets.only(right: 15),
                leading: Icon(
                  expansionTile[index].icon,
                  color: myTeal,
                  size: 22,
                ),
                title: Text(
                  expansionTile[index].title,
                  style: TextStyle(
                      fontSize: 18,
                      color: select == expansionTile[index].item
                          ? myTeal
                          : Colors.grey[700]),
                ),
                children: [
                  Wrap(
                    spacing: 15,
                    direction: Axis.vertical,
                    children: List.generate(
                      purchase.length,
                      // length,
                      (index) => Text(
                        purchase[index],
                        style: TextStyle(fontSize: 16, color: myTeal),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
