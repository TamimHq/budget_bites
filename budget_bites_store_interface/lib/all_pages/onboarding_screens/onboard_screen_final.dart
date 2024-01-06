import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../widgets/custom_image_view.dart';

class OnBoardScreenFinal extends StatelessWidget{
  const OnBoardScreenFinal({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(
          horizontal: 3,
          vertical: 20,
        ),
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
            SizedBox(height: 90,),

          ],
        ),
      ),
    );
  }

}