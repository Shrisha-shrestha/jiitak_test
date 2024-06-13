class FormValidator {
  static String? validateUserName(String? value, String label) {
    if (value == null || value.isEmpty) {
      return "$label is required";
    }
    return null;
  }

  static String? validatePassword(String? value, String label) {
    if (value!.isEmpty) {
      return "Please enter your password.";
    }
    if (value.length < 8) {
      return "Password should be greater than 8 digits";
    }
    return null;
  }

  static String? validateFullName(String? value, String label) {
    if (value!.isEmpty) {
      return "Please enter your name.";
    }
    return null;
  }

  static String? validateEmpty(
    String? value,
    String label,
  ) {
    if (value!.isEmpty) {
      return "$label cannot be empty.";
    }
    return null;
  }

  // static String? validateCheckbox(
  //   String? value,
  // ) {
  //   if (value!.isEmpty) {
  //     return "Please accept the terms and conditions.";
  //   }
  //   return null;
  // }

  static String? validateInRange(String? value, String label) {
    if (value!.isEmpty) {
      return " * is required.";
    }
    if (int.parse(value) < 1) {
      return " * must be 1 or more.";
    }
    return null;
  }

  static String? validateEducationPage(String? value, String label) {
    if (value!.isEmpty) {
      return 'Marks field should not be empty';
    }
    // else if(grade_id =="CGPA" && val!.isNotEmpty){
    //   int.parse(val) <= 21;
    //   return  'Mark Entered Must be lees than or equal to 21';
    // } else if(grade_id =="percentage" && val!.isNotEmpty){
    //   int.parse(val) <= 100;
    //   return  'Mark Entered Must be lees than or equal to 100';
    // }
    return null;
  }

  static String? validateMobile(String? value, String label) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(patttern);

    if (value!.isEmpty) {
      return "Please enter mobile number.";
    } else if (value.length != 10) {
      return "Please enter valid mobile number.";
    } else if (!regExp.hasMatch(value)) {
      return "Please enter valid mobile number.";
    }
    return null;
  }

  static String? validateOptMobile(String? value, String label) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(patttern);
    if (value!.isEmpty) {
      return null;
    } else if (value.length != 10) {
      return " Mobile number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return " Mobile number must be digits.";
    }
    return null;
  }

  static String? validateEmail(String? value, String label) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return " Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return " Invalid Email";
    }
    return null;
  }

  static String? validateOptEmail(String? value, String label) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return null;
    } else if (!regExp.hasMatch(value)) {
      return "\u26A0 Invalid Email";
    }
    return null;
  }
}
