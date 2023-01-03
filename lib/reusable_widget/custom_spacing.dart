import 'package:flutter/material.dart';

Widget height5() => const SizedBox(height: 5);
Widget height10() => const SizedBox(height: 10);
Widget height15() => const SizedBox(height: 15);
Widget height20() => const SizedBox(height: 20);
Widget height25() => const SizedBox(height: 25);
Widget height30() => const SizedBox(height: 30);
Widget height40() => const SizedBox(height: 40);
Widget height50() => const SizedBox(height: 50);

Widget width5() => const SizedBox(width: 5);
Widget width10() => const SizedBox(width: 10);
Widget width15() => const SizedBox(width: 15);
Widget width20() => const SizedBox(width: 20);
Widget width30() => const SizedBox(width: 30);
Widget width40() => const SizedBox(width: 40);
Widget width50() => const SizedBox(width: 50);

Padding myPadding({
  required Widget child,
  EdgeInsetsGeometry padding =
      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
}) =>
    Padding(
      padding: padding,
      child: child,
    );
