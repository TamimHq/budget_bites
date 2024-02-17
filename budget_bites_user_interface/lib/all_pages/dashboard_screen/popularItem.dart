import 'package:budgets_bites/core/app_export.dart';
import 'package:budgets_bites/widgets/app_column.dart';
import 'package:budgets_bites/widgets/big_text.dart';
import 'package:budgets_bites/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../core/utils/dimension.dart';
import '../../widgets/custom_icon.dart';

class PopularItemWidget extends StatefulWidget {
  const PopularItemWidget({super.key});

  @override
  State<PopularItemWidget> createState() => _PopularItemWidgetState();
}

class _PopularItemWidgetState extends State<PopularItemWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      itemCount: 10,
        itemBuilder:(context,index){
        return Container(
          margin: EdgeInsets.only(left: 20.h,right:20.h,bottom: 10.v ),
          child: Row(
            children: [
              CustomImageView(
                  height: 140.v,
                  width: 140.h,
                  imagePath: "asset/images/img_img_9302.png",
                  radius: BorderRadius.circular(Dimensions.radius20),
                  fit: BoxFit.fill,
                ),


              Expanded(
                child: Container(
                  height: 120.v,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h,right: 10.h),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(text: "Biriyani"),
                        SizedBox(height: 5.v,),
                        SmallText(text: "Taste food"),
                        SizedBox(height: 5.v,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndText(icon: Icons.circle_sharp, text: "Normal", color: Colors.black, iconColor: Colors.yellow, size: 10),
                            IconAndText(icon: Icons.location_on_outlined, text: "1.7km", color: Colors.black, iconColor: Colors.greenAccent, size: 10),
                            IconAndText(icon: Icons.access_time_filled_rounded, text: "Normal", color: Colors.black, iconColor: Colors.yellow, size: 10),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
        },

    );
  }
}
