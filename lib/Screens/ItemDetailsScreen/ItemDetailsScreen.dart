import 'package:assignment_searchingyard/Constants/Constants.dart';
import 'package:flutter/material.dart';

import 'components/BottomNavSection.dart';

class ItemDetailsScreen extends StatefulWidget {
  ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBGColor,
      //! bottom Section
      bottomNavigationBar: const BottomNavSection(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
        Container(
          height: 500,
          color: Colors.white,
        ),
        Positioned(
          bottom: -30,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
          ],
        ),
      ),
    );
  }
}
