import 'package:assignment_searchingyard/Screens/HomeScreen/components/appbar.dart';
import 'package:assignment_searchingyard/Screens/HomeScreen/components/userName.dart';
import 'package:flutter/material.dart';
import '../../Constants/Constants.dart';
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
      body: Padding(
        padding: kHorizontalSpacing,
        child: Container(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                //! appbar
                appbar(context),
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
                ItemDetailsCircle(context),
                //! Item Section
                const SizedBox(
                  height: 30,
                ),
                Items(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
