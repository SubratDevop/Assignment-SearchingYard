import 'package:assignment_searchingyard/Constants/Constants.dart';
import 'package:assignment_searchingyard/Models/itemModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/CustomSubTittleText.dart';
import '../../widget/CustomTittleText.dart';
import 'components/addtoCart.dart';
import 'components/appbar.dart';
import 'components/cartItemList.dart';
import 'components/middleCartRowSection.dart';
import 'components/totalItemListSection.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBGColor,
      bottomNavigationBar: totalItemListSection(),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //! appbar
                appbar(context),
                SizedBox(
                  height: 10,
                ),
                //! Add to Cart Section
                addToCart(),
                Expanded(
                  child: Container(
                    color: kBlack,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //! middle Cart Row
                        middleCartRowSection(),

                        //! Cart Item List
                        cartItemList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
