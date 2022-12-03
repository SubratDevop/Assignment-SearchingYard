import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widget/CustomSubTittleText.dart';

Widget capacityinfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
 
    children: [
      CustomSubTittle(
        text: "Capacity",
        textSize: 16,
        textColor: Colors.white,
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSubTittle(
                  text: "Calories",
                  textColor: Colors.white,
                  textSize: 13,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomSubTittle(
                  text: "90",
                  textColor: Colors.white,
                  textSize: 13,
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),

          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSubTittle(
                  text: "Additive",
                  textColor: Colors.white,
                  textSize: 13,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomSubTittle(
                  text: "3%",
                  textColor: Colors.white,
                  textSize: 13,
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            // margin:const EdgeInsets.symmetric(horizontal: 30),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSubTittle(
                  text: "Vitamin",
                  textColor: Colors.white,
                  textSize: 13,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomSubTittle(
                  text: "8%",
                  textColor: Colors.white,
                  textSize: 13,
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
