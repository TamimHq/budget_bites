import 'package:budgets_bites/all_pages/Dashboard/popular.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NewIteam.dart';
import 'appbar.dart';
import 'category.dart';
import 'drawer.dart';

class DashBoardMainScreen extends StatelessWidget {
  const DashBoardMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
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

                ),],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.search, color: Colors.grey,),
                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'what you like to order?',
                            border: InputBorder.none,
                          ),

                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
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

          const Popularwidget(),
          const Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              'Newest',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),),

          const NewestIteamWidget(),
        ],

      ),
      drawer: DrawerWidget(),

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

    );
  }
}
