import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../widget/CustomSubTittleText.dart';

Widget lastSection() {
  return Container(
      child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              FeatherIcons.shoppingBag,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            CustomSubTittle(
              text: "Cart",
              textColor: Colors.white,
              textSize: 20,
            ),
          ],
        ),
        Container(
          height: 40,
          width: 30,
          child: Image.asset(
            "Assets/images/Dried_appricots.jpg",
            fit: BoxFit.cover,
          ),
        )
      ],
    ),
  ));
}
