import 'package:budget_bites_store_interface/all_pages/add_food_items/add_food.dart';
import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:flutter/material.dart';

class GridViewAdmin extends StatefulWidget{
  const GridViewAdmin({super.key});

  @override
  State<GridViewAdmin> createState() => _GridViewState();
}

class _GridViewState extends State<GridViewAdmin> {
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Color(0xFF004B8D),
              Color(0xFFffffff),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        )
            : BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Colors.cyan,
              Colors.amber,
            ],
          ),
          boxShadow:  [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              //1.item
            }
            if (index == 1) {
              //2.item
            }
            if (index == 2) {
              //3.item
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddFoodItems()));
            }
            if (index == 3) {
              //4.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
               SizedBox(height: 20.v),
              Center(
                child:CustomImageView(
                  imagePath: img,
                  height: 100.v,
                  width: 100.h,
                )
              ),
              SizedBox(height: 10.v),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("Check Rider", "asset/images/rider.jpg", 0),
                makeDashboardItem("Check Orders", "asset/images/double_cart.png", 1),
                makeDashboardItem("Add Food", "asset/images/food.png", 2),
                makeDashboardItem("Check Inventory", "asset/images/inventory.jpg", 3),

              ],
            ),
          ),
        ],
      );
  }
}