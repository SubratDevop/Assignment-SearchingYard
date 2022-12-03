import 'package:assignment_searchingyard/widget/CustomeTittleText.dart';
import 'package:flutter/material.dart';
import '../../../Constants/Constants.dart';
import '../../../widget/CustomSubTittle.dart';

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
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomeTittleText(
                          text: "Dried apricots", textColor: Colors.white),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomeTittleText(
                            text: "\$9.43 ",
                            textColor: Colors.white,
                          ),

                          // const  SizedBox(width: 5,),
                          CustomSubTittle(
                            text: "/",
                            textColor: Colors.white,
                            textSize: 12,
                          ),
                          const SizedBox(
                            width: 5,
                          ),

                          CustomSubTittle(
                            text: "300g",
                            textColor: Colors.white,
                            textSize: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 13,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.white,
                            size: 13,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.shopping_cart_rounded,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              CustomeTittleText(
                                  text: "Add to cart", textSize: 16),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
