import 'package:assignment_searchingyard/widget/CustomSubTittleText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Constants/Constants.dart';
import '../../../widget/CustomTittleText.dart';
import 'FirstSection/IitemInfo.dart';
import 'FirstSection/ItemPhotos.dart';
import 'FirstSection/appbar.dart';
import 'FirstSection/capacityInfo.dart';
import 'SecondSection/secondSection.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return true;
      },
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              //! First  Section
              Container(
                height: MediaQuery.of(context).size.height - 280,
                color: kScaffoldBGColor,
                child: Padding(
                  padding: kHorizontalSpacing,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      //! appbar
                      appbar(context),

                      //! Item Photos
                      itemPhotos(),
                      const SizedBox(
                        height: 30,
                      ),
                      //! Item Info
                      itemInfo(),
                      const SizedBox(
                        height: 10,
                      ),
                      //! Capacity info
                      capacityinfo(),
                    ],
                  ),
                ),
              ),
//! Third Section
              Expanded(
                child: Container(
                  color: kBlack,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      color: kScaffoldBGColor,
                                    ),
                                    Container(
                                      height: 100,
                                      color: kBlack,
                                    )
                                  ],
                                ),
                              ),

                              //! Second Section
                              secondSection(),
                            ],
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
