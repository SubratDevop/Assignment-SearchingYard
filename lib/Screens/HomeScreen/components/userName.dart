import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../widget/CustomSubTittle.dart';
import '../../../widget/CustomeTittleText.dart';

Widget userName() {
  return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomSubTittle(
        text: "Hi, Helen",
        textSize: 20,
      ),
      const SizedBox(
        height: 20,
      ),
      CustomeTittleText(text: "What's today's taste?  😋"),
      const SizedBox(
        width: 10,
      )
    ],
  );
}
