import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class BottomSheetClass {
  static BuildContext context;
  static Widget children;
  static double height;
 
 fff(context,children,height) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      context: context,
      builder: (BuildContext context) => Container(
        child: Container(
          height: height,
          child: new Padding(
            padding: EdgeInsets.only(
              left:wp(24),
              right: wp(24),
              top: hp(15)
            ),
            child: Center(
              child: new Column(
                children:[
                  greyBox(),
                  SingleChildScrollView(
                    child:children
                  )
                ]
              ),
            )
          )
        )
      ),
    );
  } 
  greyBox(){
  return  Container(
        width: wp(36),
        height: hp(5),
        decoration: BoxDecoration(                  color: grey100,
        borderRadius: BorderRadius.circular(hp(10)),
        )
  );
  }
}

