import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Constants/Constants.dart';
import '../../../../widget/CustomSubTittleText.dart';
import '../../../../widget/CustomTittleText.dart';

Widget secondSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSubTittle(
                text: "Quantity(300g)",
                textColor: kIconColor,
                textSize: 17,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(05.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.arrow_left_outlined,
                            color: Color(0xFFa38b7a),
                          ),
                          const SizedBox(width: 10),
                          CustomSubTittle(text: "1"),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.arrow_right_outlined,
                            color: kSelectedTextColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  CustomeTittleText(
                    text: "\$9.43",
                    textColor: kIconColor,
                    textSize: 25,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //! Add to cart
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFffcc79),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart_rounded,
                            color: kIconColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CustomSubTittle(
                            text: "Add to cart",
                            textSize: 16,
                          ),
                          // AutoSizeText("Add to Cart")
                        ],
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      width: 40,
                      height: 40,
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
              )
            ],
          ),
        ),
      ),
    ],
  );
}
