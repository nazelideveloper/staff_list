import 'package:flutter/cupertino.dart';

const kScaffoldMainPadding = EdgeInsets.all(0.0);

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}