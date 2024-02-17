import 'package:budgets_bites/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_bottom_app_bar.dart';
import 'popularItem.dart';
import 'appbar.dart';
import 'category.dart';
import 'drawer.dart';

class DashBoardMainScreen extends StatefulWidget {
  const DashBoardMainScreen({super.key});

  @override
  State<DashBoardMainScreen> createState() => _DashBoardMainScreenState();
}

class _DashBoardMainScreenState extends State<DashBoardMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 15.v,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),

                ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'what you like to order?',
                  border: InputBorder.none,
                  prefixIcon: Icon(CupertinoIcons.search),
                  suffixIcon:Icon(Icons.filter_list),
                ),
              ),
            ),
          ),

          const Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const CategoryWidget(),

          const Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              'Popular',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const PopularItemWidget(),
        ],

      ),
      bottomNavigationBar: _buildBottomNavbar(),

      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0,3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.white,
          child: const Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
  Widget _buildBottomNavbar() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {});
  }
}
