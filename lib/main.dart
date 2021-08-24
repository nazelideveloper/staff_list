import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staff_list/ui/screens/dashboard_manager.dart';
import 'package:staff_list/ui/screens/list_screen.dart';

import 'models/member_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MemberData(),
      child: MaterialApp(
        home: DashboardManager(),
      ),
    );
  }
}
