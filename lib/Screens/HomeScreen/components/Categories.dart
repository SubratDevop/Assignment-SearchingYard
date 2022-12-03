import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../Constants/Constants.dart';
import '../../../Models/CatagoryModel.dart';
import '../../../widget/CustomSubTittleText.dart';
import '../../../widget/CustomTittleText.dart';

class CategorySection extends StatefulWidget {
  CategorySection({Key? key}) : super(key: key);

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  initializedData() {
    CategoryList[0].isItemSelected = true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializedData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.centerLeft,
      // width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: CategoryList.length,
              itemBuilder: (context, index) {
                return Theme(
                  data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < CategoryList.length; i++) {
                          CategoryList[i].isItemSelected = false;
                        }
                        CategoryList[index].isItemSelected = true;
                      });
                    },
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    color: CategoryList[index].isItemSelected ==
                                            false
                                        ? kItemCardBgColor
                                        : kSelectedItemCardBgColor,
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  top: 10,
                                  right: 10,
                                  left: 10,
                                  child: ClipOval(
                                    child: Container(
                                      // height: 40,
                                      // width: 40,
                                      child: Image.asset(
                                        CategoryList[index]
                                            .CategoryImage
                                            .toString(),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                CustomSubTittle(
                                  text: CategoryList[index]
                                      .Categoryname
                                      .toString(),
                                  textSize: 12,
                                  textColor:
                                      CategoryList[index].isItemSelected ==
                                              false
                                          ? kUnSelectedTextColor
                                          : kSelectedTextColor,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              FeatherIcons.search,
              size: 40,
              color: kIconColor,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
