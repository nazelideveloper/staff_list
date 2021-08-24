import 'package:flutter/material.dart';
import 'package:staff_list/ui/widgets/staff_list.dart';
import 'package:staff_list/ui/widgets/widget_styles.dart';
import 'package:staff_list/utilities/sl_colors.dart';
import 'package:staff_list/utilities/ui_utilities.dart';

import 'add_staff_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

Widget buildBottomSheet(BuildContext context) {
  return Container(
      child: AddStaffScreen(

      )
  );
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Company Staff Members"),
      floatingActionButton: FloatingActionButton(
          backgroundColor: mainColor,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(context: context, builder: buildBottomSheet);
          }),
      body: Container(
        child: StaffList(),
      ),
    );
  }
}
