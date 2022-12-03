import 'package:assignment_searchingyard/Constants/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

Widget appbar() {
  return Container(
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(FeatherIcons.menu,color: kIconColor,),
        Icon(FeatherIcons.shoppingBag,color: kIconColor,),
      ],
    ),
  );
}
