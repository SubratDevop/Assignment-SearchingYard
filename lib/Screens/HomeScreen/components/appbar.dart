import 'package:assignment_searchingyard/Constants/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../CartScreen/CartScreen.dart';

Widget appbar(BuildContext ctx) {
  return Container(
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Icon(FeatherIcons.menu,color: kIconColor,),
        InkWell(
        onTap: () {
          Navigator.of(ctx).push(MaterialPageRoute(builder: (context)=> CartScreen()));
        },
          child: Icon(FeatherIcons.shoppingBag,color: kIconColor,)),
      ],
    ),
  );
}
