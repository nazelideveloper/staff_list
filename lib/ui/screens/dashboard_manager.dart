
import 'package:flutter/material.dart';
import 'package:staff_list/ui/screens/favourite_list_screen.dart';
import 'package:staff_list/utilities/sl_colors.dart';
import 'list_screen.dart';

class DashboardManager extends StatefulWidget {
  const DashboardManager({Key? key}) : super(key: key);

  @override
  _DashboardManagerState createState() => _DashboardManagerState();
}

class _DashboardManagerState extends State<DashboardManager> {
  int currentTab = 0;

  final List<Widget> screens = [
    ListScreen(),
    FavListScreen(),

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashboardManager();

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          body: TabBarView(
            children: [
              ListScreen(),
              FavListScreen(),

            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white24,
            child: TabBar(
              // unselectedLabelColor: Colors.redAccent,
              // indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(
              //     gradient: LinearGradient(
              //         colors: [Colors.redAccent, Colors.orangeAccent]),
              //     borderRadius: BorderRadius.circular(50),
              //     color: Colors.redAccent),
              tabs: [

                Icon(
                  Icons.account_circle,
                  size: 30,
                ),

                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
              ],
              labelColor: mainColor,
              unselectedLabelColor: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
