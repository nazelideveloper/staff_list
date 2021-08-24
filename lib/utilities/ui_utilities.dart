import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staff_list/ui/widgets/widget_styles.dart';

AppBar buildAppBar({
  required BuildContext context,
  String? title,
}) {
  return AppBar(
    title: title != null
        ? Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          )
        : null,
    backgroundColor: Colors.blue,
    centerTitle: true,
    leadingWidth: 0.0,
    elevation: 0,
  );
}

Widget buildSubmitButton({
  required void Function()? onPress,
  required String title,
}) {
  return ElevatedButton(
    onPressed: onPress,
    child: Text('Save'),
    style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: Colors.purple,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      textStyle: buttonTextStyle,
    ),
  );
}
