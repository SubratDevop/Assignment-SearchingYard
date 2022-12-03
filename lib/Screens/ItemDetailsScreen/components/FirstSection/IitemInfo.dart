import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../widget/CustomSubTittleText.dart';
import '../../../../widget/CustomTittleText.dart';

Widget itemInfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomeTittleText(
        text: "Dried apricots",
        textColor: Colors.white,
        textSize: 25,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomSubTittle(
                text: "Artificial Selection",
                textSize: 10,
                textColor: Colors.white70,
              ),
              SizedBox(
                width: 5,
              ),
              CustomSubTittle(
                text: "-",
                textSize: 10,
                textColor: Colors.white70,
              ),
              SizedBox(
                width: 5,
              ),
              CustomSubTittle(
                text: "Taste sweet",
                textSize: 10,
                textColor: Colors.white70,
              ),
            ],
          ),
          //! Rating Star Section
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star,
                color: Colors.white,
                size: 18,
              ),
              Icon(
                Icons.star_half,
                color: Colors.white,
                size: 18,
              ),
            ],
          ),
        ],
      )
    ],
  );
}
