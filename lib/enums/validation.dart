import 'package:staff_list/enums/regex_pattern.dart';
import 'package:staff_list/utilities/sl_string_keys.dart';
import 'package:staff_list/utilities/sl_strings.dart';

mixin Validation {
  bool _isEmailValidate({required String email}) {
    if (email.isNotEmpty && RegexPattern.email.pattern.hasMatch(email)) {
      return true;
    }
    return false;
  }

  // String? emailValidation(email) {
  //   if (email != null && email.isEmpty) {
  //     return SLStrings[SLStringKeys.empty_email_error_text];
  //   }
  //   if (!_isEmailValidate(email: email)) {
  //     return SLStrings[SLStringKeys.invalid_email_error_text];
  //   }
  //   return null;
  // }
  bool _isValidate({required String text}){
    if(text.isNotEmpty){
      return true;
    }return false;
  }

}
