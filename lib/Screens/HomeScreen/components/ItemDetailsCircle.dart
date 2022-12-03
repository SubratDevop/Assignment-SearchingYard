import 'package:assignment_searchingyard/Screens/ItemDetailsScreen/ItemDetailsScreen.dart';
import 'package:assignment_searchingyard/widget/CustomTittleText.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../Constants/Constants.dart';
import '../../../widget/CustomSubTittleText.dart';

Widget ItemDetailsCircle(BuildContext ctx) {
  return InkWell(
    onTap: () {
        Navigator.of(ctx).push(MaterialPageRoute(builder: ((ctx) => ItemDetailsScreen())));
      },
    child: Stack(
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
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 160,
                width: 110,
               
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
  
                      //! Rating Star Section
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
  
                      //! Add to cart Section
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
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
                    ],
                  ),
                ),
              )),
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
          ),
        )
      ],
    ),
  );
}
