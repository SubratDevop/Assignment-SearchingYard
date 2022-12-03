import 'package:assignment_searchingyard/Constants/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

Widget appbar() {
  return Container(
    alignment: Alignment.centerLeft,
    height: 60,
    child: const Icon(
      FeatherIcons.arrowLeft,
      color: Colors.white,
    ),
  );
}
