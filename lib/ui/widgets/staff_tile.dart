import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staff_list/models/member.dart';
import 'package:staff_list/utilities/sl_colors.dart';

class StaffTile extends StatelessWidget {
  bool isFavourite = false;
  final String staffName;
  final String staffSurName;
  final String staffEmail;
  final String staffSpeciality;
  final Function longPressCallback;

  StaffTile({required this.isFavourite,
    required this.longPressCallback,
    required this.staffName,
    required this.staffSurName,
    required this.staffEmail,
    required this.staffSpeciality});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onLongPress: () => longPressCallback,
        title: Text('${staffName},${staffSurName}'),
        subtitle: Text(" ${staffEmail}\n${staffSpeciality}" ),
        trailing: MemberCheckbox(isFavourite),
        isThreeLine: true,
        //   style: TextStyle(
        //       decoration: isChecked ? TextDecoration.lineThrough : null),
        // ),

        //isThreeLine: Text(staffEmail,),
      ),
    );
  }
}

class MemberCheckbox extends StatelessWidget {

  final bool checkboxState;

  MemberCheckbox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor:mainColor,
      value: false,
      onChanged: (newValue) {
        // setState(() {
        //   isFavourite = newValue!;
        // });
      },
    );
  }
}
