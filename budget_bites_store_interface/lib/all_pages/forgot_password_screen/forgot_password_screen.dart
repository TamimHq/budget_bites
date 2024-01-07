import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../widgets/custom_image_view.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Color(0xFFEA2242),
          leading: IconButton(onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new, color: Colors.white,
              ),
          ),

          title: const Text("Forget Password?",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),

          ),
          automaticallyImplyLeading: false,
        ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 18,horizontal: 14),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 27,),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal:15),
                child: Text('Select which contact details should we use to reset your password',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),

                ),
              ),

            SizedBox(height: 31,),
            Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.symmetric(horizontal: 23,vertical: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(
                  color: Colors.blueGrey.shade700,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: 'asset/images/img_icon_message.png',
                    height: 41, 
                    width: 41,
                    margin: EdgeInsets.symmetric(vertical: 2),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical:2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Via sms:',
                          style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31,),
            Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.symmetric(horizontal: 23,vertical: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(
                  color: Colors.blueGrey.shade700,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: 'asset/images/img_icon_email.png',
                    height: 41,
                    width: 41,
                    margin: EdgeInsets.symmetric(vertical: 2),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical:2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Via email:',
                          style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEA2242),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Border radius
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

}
