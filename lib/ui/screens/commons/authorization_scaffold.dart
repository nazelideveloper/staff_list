import 'package:flutter/material.dart';
import 'package:staff_list/utilities/constants.dart';
import 'package:staff_list/utilities/ui_utilities.dart';

class AuthorizationScaffold extends StatelessWidget {
  final Widget child;
  final String? title;

  const AuthorizationScaffold({
    Key? key,
    required this.child,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff757575),

      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: kScaffoldMainPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}
