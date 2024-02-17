import 'package:budgets_bites/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/dimension.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';


class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical:20.v,
          horizontal: 20.h),
      child: Padding(
        padding:  EdgeInsets.only(top:30.v),
        child: Column(
          children: [

            Text('Select a meal Type',style: TextStyle(
                color: Colors.red,
                fontSize: Dimensions.font30,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0.06),),
            SizedBox(height: 40.v,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: 'Bangladesh', size: Dimensions.font20,color: Colors.greenAccent,),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      children: [
                        SmallText(text: 'Dhaka', size: Dimensions.font15),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[ BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),]
                    ),
                    child: Icon(Icons.notifications),
                  ),
                ),
              ],

            ),
          ],


        ),
      ),
    );
  }
}