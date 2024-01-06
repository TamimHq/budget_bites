import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../widgets/custom_image_view.dart';

class OnBoardScreenOne extends StatelessWidget {
  const OnBoardScreenOne({super.key});

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.symmetric(vertical: 45),
          child: Column(
            children: [
              Container(
                width: 80, // Adjust the size of the circle box as needed
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red[
                      700], // Set the background color of the circle if needed
                ),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: SvgPicture.asset(
                    'asset/images/img_logo_yellow_700.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(height: 15),
              _ImageFormat(),
              SizedBox(height:39),
              Msg1(),
              SizedBox(height: 25,),
              Msg2(),
              SizedBox(height: 36),
              SizedBox(
                height: 9,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect:ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: Colors.red.shade900,
                    dotColor: Colors.orange.shade900,
                    dotHeight: 9,
                    dotWidth: 9,
                  ),

                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: (){},
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900],
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Border radius
                  ),
                ),
              ),
              SizedBox(height: 25,),
              InkWell(
                onTap: (){},
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF979797),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class Msg2 extends StatelessWidget {
  const Msg2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 88,
        width: 353,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: 'asset/images/img_ellipse_11.png',
              height: 66,
              width: 53,
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 323,
                child: Text('Order your favourite meal and taste greatness',style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Msg1 extends StatelessWidget {
  const Msg1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(left: 64,right: 44),
      child: Text('Your comfort food lies here',style:  TextStyle(
        color: Color(0xFFF10027),
        fontSize: 24,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      ),
    );
  }
}

class _ImageFormat extends StatelessWidget {
  const _ImageFormat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      width: 328,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 1),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg('asset/images/img_group_53.svg'),
          fit: BoxFit.cover
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 50),
              padding: EdgeInsets.symmetric(
                horizontal: 48,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg('asset/images/img_group_29.svg'),
                fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 161,),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[700],
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_group_13.svg',
            height: 140,
            width: 152,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 40,right: 25),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_group_18.svg',
            height: 68,
            width: 120,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 15,
              bottom: 42,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_ellipse_12.svg',
            height: 22,
            width: 30,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 41,
              right: 45,
            ),
          ),

        ],
      ),
    );
  }
}
