import 'package:assignment_searchingyard/Constants/Constants.dart';
import 'package:assignment_searchingyard/Screens/HomeScreen/components/appbar.dart';
import 'package:assignment_searchingyard/Screens/HomeScreen/components/userName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../Models/CatagoryModel.dart';
import '../../widget/CustomSubTittle.dart';
import '../../widget/CustomeTittleText.dart';
import 'components/Categories.dart';
import 'components/ItemDetailsCircle.dart';
import 'components/Items.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                //! appbar
                appbar(),
                const SizedBox(
                  height: 20,
                ),
                //!  UserName
                userName(),
                const SizedBox(
                  height: 20,
                ),
                //!Category Section
                CategorySection(),
                //! Item Details Circle
                const SizedBox(
                  height: 30,
                ),
                ItemDetailsCircle(),
                //! Item Section
                const SizedBox(
                  height: 30,
                ),
                Items(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
