import 'package:demo_ltd_company/reusable_widget/custom_color.dart';
import 'package:demo_ltd_company/reusable_widget/custom_spacing.dart';
import 'package:flutter/material.dart';

Widget customButton(
        {String title = 'My Button',
        double height = 60,
        double width = double.infinity,
        double fontSize = 22,
        dynamic fontWeight = FontWeight.bold,
        dynamic foregroundColor = Colors.white,
        dynamic backgroundColor = const Color(0xFF10ab83),
        dynamic borderColor = const Color(0xFF10ab83),
        double borderWidth = 2,
        double borderRadius = 5,
        double paddingVertical = 0,
        double paddingHorizontal = 0,
        double outsidePaddingHorizontal = 10,
        required VoidCallback onPressed}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: outsidePaddingHorizontal),
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (states) => BorderSide(width: borderWidth, color: borderColor),
          ),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
                vertical: paddingVertical, horizontal: paddingHorizontal),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
              child: FittedBox(
                  child: Icon(
                Icons.add,
                    color: myTeal,
              )),
            ),
            width15(),
            Text(
              title,
              style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
            ),
          ],
        ),
      ),
    );
