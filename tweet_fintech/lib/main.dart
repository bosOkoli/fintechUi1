import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tweet_fintech/components.dart';
import 'package:tweet_fintech/homescreen.dart';
import 'package:tweet_fintech/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(logicalWidth(), logicalHeight()),
      builder: (context) => const MaterialApp(
          debugShowCheckedModeBanner: false, home: MainScreen()),
    );
  }
}
