import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_image_view.dart';

class ProfileSuccessScreen extends StatelessWidget {
  const ProfileSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEA2242),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 700,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: 'asset/images/img_pattern.svg',
                    height: 400,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 127),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 170,
                            width: 170,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 55),
                            decoration: BoxDecoration(
                              color: Colors.green[500],
                              borderRadius: BorderRadius.circular(85),
                            ),
                            child: CustomImageView(
                              imagePath:
                                  'asset/images/img_checkmark_onprimary.svg',
                              height: 60,
                              width: 70,
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congratulations',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0.05,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 50,
                            margin: EdgeInsets.only(left: 6),
                            child: Text(
                              'You have successfully activated your profile!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 1.05,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Set Up Your Store',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[900],
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15), // Padding
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8), // Border radius
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
