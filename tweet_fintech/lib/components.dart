import 'package:flutter/material.dart';

///design height(responsiveness)
double logicalHeight() {
  return WidgetsBinding.instance!.window.physicalSize.height /
      WidgetsBinding.instance!.window.devicePixelRatio;
}

///design width(responsiveness)
double logicalWidth() {
  return WidgetsBinding.instance!.window.physicalSize.width /
      WidgetsBinding.instance!.window.devicePixelRatio;
}

///MediaQuery Width(responsiveness)
double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

///MediaQuery Height(responsiveness)
double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
