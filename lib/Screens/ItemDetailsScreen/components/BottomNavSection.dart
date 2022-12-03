import 'package:assignment_searchingyard/widget/CustomSubTittleText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../Constants/Constants.dart';

class BottomNavSection extends StatelessWidget {
  const BottomNavSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20 , right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                FeatherIcons.shoppingBag,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              CustomSubTittle(
                text: "Cart",
                textColor: Colors.white,
              )
            ],
          ),
          Container(
            height: 55,
            width: 40,
            child: Image.asset(
              "Assets/images/Dried_appricots.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
