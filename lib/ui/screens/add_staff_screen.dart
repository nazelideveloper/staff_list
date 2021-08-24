import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staff_list/models/member_data.dart';
import 'package:staff_list/ui/widgets/widget_styles.dart';
import 'package:staff_list/utilities/sl_string_keys.dart';
import 'package:staff_list/utilities/sl_strings.dart';
import'package:staff_list/enums/validation.dart';
import 'commons/authorization_scaffold.dart';
import 'package:provider/provider.dart';
import 'package:staff_list/utilities/ui_utilities.dart';

class AddStaffScreen extends StatelessWidget {
  AddStaffScreen({Key? key}) : super(key: key);
   String? newMemberInfo;
  static final _formKey = GlobalKey<FormState>();
  TextEditingController? emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthorizationScaffold(
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            // color: Color(0xff757575),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Form(
              key: _formKey,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Add Staff Member',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: inputTextStyle,
                    keyboardType: TextInputType.name,
                    decoration: inputDecoration(
                      SLStrings[SLStringKeys.enter_name]!,
                    ),
                    onChanged: (newText) {
                      newMemberInfo = newText;
                    },
                      // validator: emailValidation,
                      controller: emailController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: inputDecoration(
                      SLStrings[SLStringKeys.enter_surname]!,
                    ),
                    onChanged: (newText) {
                      newMemberInfo = newText;
                    },
                       // validator: _isValidate(),
                      controller: emailController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: inputTextStyle,
                    keyboardType: TextInputType.emailAddress,
                    decoration: inputDecoration(
                      SLStrings[SLStringKeys.enter_email]!,
                    ),
                    onChanged: (newText) {
                      newMemberInfo = newText;
                    },
                    //validator: emailValidation,
                   //controller: emailController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: inputTextStyle,
                    keyboardType: TextInputType.name,
                    decoration: inputDecoration(
                      SLStrings[SLStringKeys.enter_speciality]!,
                    ),
                    onChanged: (newText) {
                      newMemberInfo = newText;
                    },
                    //   validator: emailValidation,
                    //  controller: emailController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
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
                    onPressed: () {
                      Provider.of<MemberData>(context,listen: false).addMember(newMemberInfo!);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

void _saveButtonOnPressed(BuildContext context) {
  if (_formKey.currentState?.validate() ?? false) {

  }
}
}
