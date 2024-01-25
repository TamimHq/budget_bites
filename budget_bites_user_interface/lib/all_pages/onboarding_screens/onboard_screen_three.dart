import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreenThree extends StatelessWidget{
  const OnBoardScreenThree({super.key});

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
             SizedBox(height: 51,),
             
             SvgPicture.asset('asset/images/img_take_away_cuate.svg',height: 235,width: 336,),

             SizedBox(height:75 ,),

             Text('Delivery to your home',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red[800],fontSize: 30),),

             SizedBox(height: 13,),

             Container(
               width: 250,
               margin: EdgeInsets.only(
                 left: 33,
                 right: 36,
               ),
               child: Text(
                 "Enjoy fast and smooth delivery at your doorstep",
                 maxLines: 2,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(color: Colors.black,
                     fontSize: 16,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400),
               ),
             ),
             SizedBox(height: 39),
             _buildOnboardingSection(),
             SizedBox(height: 5),

           ],

          ),

        ),
      ),
    );
  }
Widget _buildOnboardingSection(){
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: EdgeInsets.only(left: 49),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 30,top: 21),
              child: Column(
                children: [
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
                  SizedBox(height: 32),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Get Started',
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
                ],
              ),
            ),
          ),
          Container(
            child: Image.asset('asset/images/img_location_yellow_300.png',height: 67,width: 51,),
            margin: EdgeInsets.only(bottom: 67),
          ),
        ],
      ),
    ),
  );
}


}

