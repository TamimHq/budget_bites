
import 'package:budgets_bites/core/app_export.dart';
import 'package:budgets_bites/core/utils/dimension.dart';
import 'package:budgets_bites/widgets/app_column.dart';
import 'package:budgets_bites/widgets/app_icon.dart';
import 'package:flutter/material.dart';

import '../../widgets/big_text.dart';
import '../../widgets/custom_icon.dart';
import '../../widgets/expendable_text.dart';
import '../../widgets/small_text.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgView,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "asset/images/img_rectangle_574.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),



      ),
          ),
          //icons
          Positioned(
            top: Dimensions.height30,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          //food details
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top:Dimensions.popularFoodImgView-10,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.height24,
                horizontal: Dimensions.width49,

              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: 'Burger',
                  ),
                  SizedBox(height: Dimensions.height5,),
                  BigText(text: "Introduce", size: Dimensions.font20),
                  SizedBox(height: Dimensions.height5,),
                  Expanded(
                      child: SingleChildScrollView(
                          child: ExpendableText(

                       text: '',
                          ))),
                ],
              ),


          ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Color(0xFFFFECEC),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.remove,color: Colors.red,size: 15,),
                        ],
                      ),
                    ),
                    SizedBox(width:Dimensions.width30/2 ,),

                    BigText(text: '1', size: Dimensions.font20,color: Colors.red,),
                    SizedBox(width:Dimensions.width30/2 ,),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Color(0xFFFFECEC),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add,color: Colors.red,size: 15,),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.zero,
                    child: BigText(text: '\$12', size:Dimensions.font20 )),
              ],
            ),
            SizedBox(height:10.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.favorite,
                  iconColor: Colors.red,
                  backgroundColor: Colors.white,
                  iconSize: 40.v,
                ),

                ElevatedButton(onPressed: (){},
                  child: Text(
                    'Add to cart',style: TextStyle(fontSize: 15,),
                  ),
                  style: ButtonStyle(

                    backgroundColor:
                    MaterialStateProperty.all(Colors.red[900]),
                    foregroundColor:
                    MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            horizontal:
                            MediaQuery.of(context).size.width *
                                0.1)),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(50)),
                        )),
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
