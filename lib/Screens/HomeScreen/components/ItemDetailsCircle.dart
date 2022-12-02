import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../Constants/Constants.dart';

Widget ItemDetailsCircle() {
  return Stack(
    children: [
      Align(
        alignment: Alignment.center,
        child: ClipOval(
          child: Container(
            height: 300,
            width: 300,
            color: kScaffoldBGColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Container(
          height: 200,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 160,
                width: 110,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600, width: 1)),
                child: Image.asset(
                  "Assets/images/Dried_appricots.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.transparent,
              )),
              ClipOval(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}
