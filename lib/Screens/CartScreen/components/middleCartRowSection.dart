import 'package:assignment_searchingyard/Constants/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../widget/CustomSubTittleText.dart';

Widget middleCartRowSection() {
  return Container(
 color: kBlack,
      child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          FeatherIcons.shoppingBag,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(
          width: 20,
        ),
        CustomSubTittle(
          text: "Cart",
          textColor: Colors.white,
          textSize: 20,
        ),
      ],
    ),
  ));
}
