import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:staff_list/models/member.dart';

class MemberData extends ChangeNotifier {
  static List<Member> _members = [
    Member(
        name: 'FirstName',
        surname: 'LastName',
        email: 'eaxmple@mail.com',
        speciality: 'IOS developer'),
    Member(
        name: 'FirstName',
        surname: 'LastName',
        email: 'eaxmple@mail.com',
        speciality: 'Android developer'),
    Member(
        name: 'Firstname',
        surname: 'LastName',
        email: 'eaxmple@mail.com',
        speciality: 'Android developer'),
  ];

  UnmodifiableListView<Member> get members {
    return UnmodifiableListView(_members);
  }

  void addMember(String newMemberInfo) {
    final member = Member(
        name: newMemberInfo,
        surname: newMemberInfo,
        email: newMemberInfo,
        speciality: newMemberInfo);
    _members.add(member);
    notifyListeners();
  }

  static int get memberCount{
    return _members.length;
   }

  void deleteMember(Member member) {
    _members.remove(member);
    notifyListeners();
  }
}
