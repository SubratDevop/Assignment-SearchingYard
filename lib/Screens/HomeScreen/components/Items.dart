import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../Constants/Constants.dart';
import '../../../Models/CatagoryModel.dart';
import '../../../Models/itemModel.dart';
import '../../../widget/CustomSubTittleText.dart';
import '../../../widget/CustomTittleText.dart';
import '../../ItemDetailsScreen/ItemDetailsScreen.dart';

class Items extends StatefulWidget {
  Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  initializedData() {
    itemList[0].isItemSelected = true;
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
      height: 60,
      alignment: Alignment.centerLeft,
      // color: Colors.grey,
      // width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Theme(
                  data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < itemList.length; i++) {
                          itemList[i].isItemSelected = false;
                        }
                        itemList[index].isItemSelected = true;

                        Future.delayed(Duration(seconds: 1), () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ItemDetailsScreen()),
                          );
                        });
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
                                    height: 60,
                                    width: 60,
                                    color:
                                        itemList[index].isItemSelected == false
                                            ? kItemCardBgColor
                                            : kScaffoldBGColor,
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  top: 15,
                                  left: 15,
                                  right: 15,
                                  child: Image.asset(
                                    itemList[index].itemImage.toString(),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ],
                            ),
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
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(30)),
            child: Icon(
              FeatherIcons.plus,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
