import 'package:TestApp/common/ButtonWidget.dart';
import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/models/recommended.dart';
import 'package:TestApp/screens/Home/Components/Stars.dart';
import 'package:flutter/material.dart';

class CartItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:wp(30),right:wp(30),top:hp(20)),
      margin: EdgeInsets.only(bottom:20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              dummyRecoData.length, (index) => 
              CartCard(newCart:dummyRecoData[index])
            ),
            // SizedBox(height:hp(40)),
            new RowText(
              padding: wp(0),
              leftText: "Total:",
              rightText: 'NGN ${toMoney("20000")}',
              rightFontSize: hp(23),
              rightFontWeight: FontWeight.w600,
            ),
            SizedBox(height:hp(41)),
            ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                        ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                        ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                        ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                   ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),
                                              ButtonWidget(
              title:'CHECKOUT',
              onPress:(){},
              bgColor: darkBrown,
            ),

          ],
        ),
      ),
    );
  }
}


class CartCard extends StatelessWidget {
  final RecoItem newCart;

  const CartCard({Key key, this.newCart}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String price = toMoney(newCart.price);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: hp(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: new AssetImage(
                newCart.image, 
              ),
              height: hp(42),
              width: wp(37),
              fit: BoxFit.contain,
              ),
              // SizedBox(width:wp(0)),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  SizedBox(height: hp(10)),
                  new CustomText(
                    title:newCart.name,
                    weight: FontWeight.w500,
                     fontsize: hp(14),

                  ),
                  SizedBox(height: hp(6)),
                  new CustomText(
                    title: newCart.toppings,
                    fontsize: hp(12),
                  ),
                ]
              ),
              Container(
                width: wp(120),
                padding: EdgeInsets.only(left:wp(10)),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     new CustomText(
                      title:"N$price",
                      weight: FontWeight.w500,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: hp(30),
                        height: hp(30),
                        child:Icon(
                          Icons.delete_forever_sharp,
                          size: hp(14),
                        ),
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBrown,
                        ),
                      ) 
                    ),

                  ],
                ),
              ),
            ],  
          ),
        ),
        SizedBox(height:hp(35))
      ],
    );
  }
}