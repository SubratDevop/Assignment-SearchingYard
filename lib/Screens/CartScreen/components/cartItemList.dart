import 'package:flutter/material.dart';

import '../../../Constants/Constants.dart';
import '../../../Models/itemModel.dart';
import '../../../widget/CustomSubTittleText.dart';

Widget cartItemList() {
  return Container(
      // height: 300,
      color: kBlack,

      child: Column(
        children: [
          for (int i = 0; i < itemList.length; i++)
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            child: Image.asset(
                              itemList[i].itemImage.toString(),
                              //  width: 60,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              CustomSubTittle(
                                text: itemList[i].itemName.toString(),
                                textColor: Colors.white,
                                textSize: 17,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              CustomSubTittle(
                                  text: itemList[i].price.toString(),
                                  textColor: Colors.white,
                                  textSize: 15)
                            ],
                          )
                        ],
                      ),
                      CustomSubTittle(
                          text: "x1", textColor: Colors.white, textSize: 25)
                    ]),
              ),
            )
        ],
      ));
}
