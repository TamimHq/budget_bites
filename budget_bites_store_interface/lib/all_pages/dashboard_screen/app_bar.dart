import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:budget_bites_store_interface/profile_screen/profile_screen.dart';
import 'package:budget_bites_store_interface/widgets/app_bar/appbar_leading_image.dart';
import 'package:budget_bites_store_interface/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';

class AppBarDashBoard extends StatelessWidget{
  const AppBarDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    mediaQueryData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.v,
        horizontal: 15.h,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder20,
                color: Colors.red,
            ),
            child: AppbarLeadingImage(
              imagePath: 'asset/images/img_camera.svg',
              onTap: () {
                // Add your logic for the AppbarLeadingImage onTap event here
                print('Camera icon tapped!');
                // For example, navigate to a new page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
          ),
          AppbarTitle(text: "Welcome to DashBoard"),
          Row(
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                      color: Colors.red,
                  ),
                  child: Center(child: Icon(Icons.search)),
                ),
              ),
              SizedBox(width: 5.h,),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                    color: Colors.red,
                  ),
                  child: Center(child: Icon(Icons.person)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}