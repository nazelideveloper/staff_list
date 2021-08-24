import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staff_list/utilities/sl_colors.dart';

AppBar mainAppBar(String text) => AppBar(
      title: Text(text),
      backgroundColor: mainColor,
      centerTitle: true,
      elevation: 0,
    );

InputDecoration inputDecoration(String hintText) => InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        fontFamily: 'Roboto_Regular',
        fontSize: 12.0,
        color: Colors.grey,
      ),
    );

const TextStyle inputTextStyle = TextStyle(
  fontFamily: 'Roboto_Regular',
  fontSize: 16.0,
  color: Colors.black,
);

const TextStyle buttonTextStyle = TextStyle(
  fontSize: 18.0,
  fontFamily: "Roboto_Bold",
  color: Colors.white,
);

const TextStyle titleTextStyle = TextStyle(
  fontFamily: "Roboto_Regular",
  fontSize: 16.0,
  color: Colors.black,
);

const TextStyle lightGrayTextStyle = TextStyle(
  fontFamily: "Roboto_Regular",
  fontSize: 14.0,
  color: Colors.grey,
);

const TextStyle formHintTextStyle = TextStyle(
  fontFamily: "Roboto_Italic",
  fontSize: 14.0,
  color: Colors.grey,
);
