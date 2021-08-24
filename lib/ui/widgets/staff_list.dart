import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:staff_list/models/member_data.dart';
import 'package:staff_list/ui/widgets/staff_tile.dart';

class StaffList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MemberData>(
      builder: (context, memberData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final staff = memberData.members[index];
            return StaffTile(

              staffName: staff.name,
              staffSurName: staff.surname,
              staffEmail: staff.email,
              staffSpeciality: staff.speciality,
              isFavourite: staff.isFavourite,
              longPressCallback: () {
                memberData.deleteMember(staff);
              },
            );
          },
          itemCount: MemberData.memberCount,
        );
      },
    );
  }
}
