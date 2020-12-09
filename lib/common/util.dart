import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:kyc_demo/src/application.dart';
// import 'package:kyc_demo/src/components/profile/views/bvn_modal.dart';
// import 'package:kyc_demo/src/components/profile/views/passport_modal.dart';
// import 'package:kyc_demo/src/init.dart';

class Utils {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;
  static InputDecoration decoration(
    String label, {
    bool disabled: false,
   final IconData prefix,
   final IconData suffix,
    String hint,
    bool long: false,
  }) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.5,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(7),
    );

    return InputDecoration(
      // labelText: label,
      border: border,
      enabledBorder: border,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: disabled ? Colors.grey.withOpacity(.3) : Colors.white,
      filled: true,
      prefixIcon: Icon(
        prefix,
        size: hp(18),
        color: Colors.red,
      ),
      suffixIcon: Icon(
        suffix,
        size: hp(18),
        color: Colors.red,
      ),
      hintText: label,
      hintStyle: TextStyle(fontSize: 12),
      labelStyle: TextStyle(fontSize: 12,color: Colors.red),
    );
  }

 init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double hp(double inputHeight) {
  double screenHeight = Utils.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double wp(double inputWidth) {
  double screenWidth = Utils.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

String toMoney (String value){
  return value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
}




// class Utils {


// }

