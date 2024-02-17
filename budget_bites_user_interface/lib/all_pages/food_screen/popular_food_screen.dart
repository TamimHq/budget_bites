import 'package:budgets_bites/core/app_export.dart';
import 'package:budgets_bites/widgets/app_icon.dart';
import 'package:flutter/material.dart';

import '../../core/utils/dimension.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expendable_text.dart';

class PopularFoodScreen extends StatelessWidget {
  const PopularFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80.v,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(bottom: 10.v,top: 5.v),
                child: Center(
                    child: BigText(
                  text: "New Food",
                  size: Dimensions.font26,
                )),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )
                  ),
              ),

            ),
            pinned: true,
            backgroundColor: Colors.yellowAccent,
            expandedHeight: 300.v,
            flexibleSpace: FlexibleSpaceBar(
              background:
             CustomImageView(
               imagePath: "asset/images/img_img_9302.png",
               fit: BoxFit.fill,
               width: double.maxFinite,
             ),
            ),
          ),
          SliverToBoxAdapter(
            child:Column(
              children: [
                Container(
                  child: ExpendableText(text: 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',),
                  margin: EdgeInsets.only(left: 20.h,right: 20.h),
                ),
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHightBar,
        padding: EdgeInsets.only(
          top: 10.v,
          bottom: 20.v,
          left: 10.h,
          right: 10.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            SizedBox(height: 10.v,),
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
