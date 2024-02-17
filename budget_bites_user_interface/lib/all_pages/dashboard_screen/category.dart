import 'package:budgets_bites/core/app_export.dart';
import 'package:budgets_bites/core/utils/dimension.dart';
import 'package:budgets_bites/widgets/app_column.dart';
import 'package:budgets_bites/widgets/big_text.dart';
import 'package:budgets_bites/widgets/custom_icon.dart';
import 'package:budgets_bites/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_image_view.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {

  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue=0.0;
  final double _scaleFactor=0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
     setState(() {
       _currentPageValue= pageController.page!;
     });
    });
  }
  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300.v,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context,position){
              return _buildPageItem(position);
            },
          ),
        ),
        SizedBox(height: 20.v,),
        SmoothPageIndicator(
            controller: pageController, // PageController
            count:  5,
            effect:  WormEffect(offset: 12,dotColor: Colors.blueAccent,activeDotColor: Colors.red),  // your preferred effect
            onDotClicked: (index){

            }
        )
      ],
    );
  }
  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();

    double currScale;
    double currTrans;

    if (index == _currentPageValue.floor()) {
      currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix.setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      currScale = _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix.setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix.setTranslationRaw(0, currTrans, 0);
    } else {
      currScale = _scaleFactor;
      currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix.setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Center(
            child: CustomImageView(
              height: 300, // Adjust height as needed
              margin: EdgeInsets.symmetric(horizontal: Dimensions.width10), // Center image horizontally
              fit: BoxFit.cover,
              imagePath: "asset/images/drink.png",
            ),
          ),
          Positioned(
            bottom: Dimensions.height30,
            left: Dimensions.width30,
            right: Dimensions.width30,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(Dimensions.height15),
                child: AppColumn(
                  text: "Biriyani",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
