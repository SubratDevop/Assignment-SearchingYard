import 'package:assignment_searchingyard/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/ItemDetailsScreen/ItemDetailsScreen.dart';
import 'package:device_preview/device_preview.dart';

//! with Device Preview
void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 781),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          //! with Device Preview
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),

          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: HomeScreen(),
          home: ItemDetailsScreen()
        );
      },
    );
  }
}
