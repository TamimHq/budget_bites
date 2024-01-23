import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreenTwo extends StatelessWidget{
  const OnBoardScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Container(
                width: 80, // Adjust the size of the circle box as needed
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red[700], // Set the background color of the circle if needed
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
              SizedBox(height: 35,),
              Container(
                child: SvgPicture.asset('asset/images/img_illustration.svg',height: 342,width: 327,),
                alignment: Alignment.center,
              ),
              SizedBox(height: 32,),
              Container(
                width: 326,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 10,
                ),
                child: Text(
                  "Your comfort food lies here",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF10027),
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 21),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 294,
                  margin: EdgeInsets.only(
                    left: 18,
                    right: 29,
                  ),
                  child: Text(
                    "We provide well prepared meal at all hours of the day",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
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