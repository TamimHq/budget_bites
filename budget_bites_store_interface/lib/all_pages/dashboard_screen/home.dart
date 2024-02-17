import 'package:budget_bites_store_interface/all_pages/dashboard_screen/app_bar.dart';
import 'package:budget_bites_store_interface/all_pages/dashboard_screen/grid_view_admin.dart';
import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:budget_bites_store_interface/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'open_shop.dart';




class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00008B),
      body: Padding(
        padding:  EdgeInsets.only(top:10.v),
        child: ListView(
          children: [
            AppBarDashBoard(),
            SizedBox(height: 15.v,),
            Padding(
              padding:  EdgeInsets.only(left: 10.h,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(text: "Start Your Business",color: Colors.black,weight: FontWeight.w700,size: 25,),
                  OpenShop(),
                ],
              ),
            ),
            SizedBox(
                height:600.v,
                child: GridViewAdmin()),

          ],
        ),
      )
    );
  }


}