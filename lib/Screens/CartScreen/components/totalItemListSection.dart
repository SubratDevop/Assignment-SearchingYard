import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Constants/Constants.dart';
import '../../../Models/itemModel.dart';
import '../../../widget/CustomSubTittleText.dart';

Widget totalItemListSection() {
  return Container(
      color: kBlack,
    
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomSubTittle(
                text: "${itemList.length} items",
                textColor: Colors.white60,
              ),
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                    color: kBlack,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(
                      color: const Color(0xFFffcc79),
                      width: 1,
                    )),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: kBlack,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(child: CustomSubTittle(text: "\$  38.25",textSize: 15,textColor: const Color(0xFFffcc79),)),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: const Color(0xFFffcc79),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                            child: CustomSubTittle(
                          text: "Buy Now",
                          textSize: 15,
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ));
}
