import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../widgets/custom_image_view.dart';

class OnBoardScreenFinal extends StatelessWidget {
  const OnBoardScreenFinal({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.symmetric(
            horizontal: 3,
            vertical: 45,
          ),
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
              SizedBox(
                height: 90,
              ),
              DesignOne(),
              Divider(
                color: Colors.red[900],
                indent: 1,
                endIndent: 4,
              ),
              SizedBox(
                height: 20,
              ),
              SIgnInButton(),
              SizedBox(height: 22),
              SignUpButton(),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
              onTap: () {},
              child: Container(
    margin: EdgeInsets.only(
      left: 20,
      right: 23,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 31,
      vertical: 26,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.red.withOpacity(0.5),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2),
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.red,
              fontSize: 17.22,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,

            ),
          ),
        ),
        CustomImageView(
          imagePath: 'asset/images/img_right_arrow_1_primary.svg',
          height: 16,
          width: 20,
          margin: EdgeInsets.only(bottom: 6),
        ),
      ],
    ),
              ),
            );
  }
}

class SIgnInButton extends StatelessWidget {
  const SIgnInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 23,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 27,
        ),
        decoration: BoxDecoration  (
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.red.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                "Sign In",
                style:
                  TextStyle(
                    color: Colors.white,
                    fontSize: 17.22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,

                ),
              ),
            ),
            CustomImageView(
              imagePath: 'asset/images/img_right_arrow_1.svg',
              height: 16,
              width: 20,
              radius: BorderRadius.circular(
                8,
              ),
              margin: EdgeInsets.only(bottom: 6),
            ),
          ],
        ),
      ),
    );
  }
}

class DesignOne extends StatelessWidget {
  const DesignOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 218,
      width: 377,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 171,
              margin: EdgeInsets.only(
                left: 103,
                top: 90,
                right: 103,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg('asset/images/img_group_76.svg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 39),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: 'asset/images/img_vector.svg',
                          height: 30,
                          width: 27,
                        ),
                        Container(
                          height: 8,
                          width: 34,
                          decoration: BoxDecoration(
                            color: Colors.amber[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 69,
                    margin: EdgeInsets.only(
                      left: 8,
                      top: 33,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 21),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg('asset/images/img_group_72.svg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: 'asset/images/img_close.svg',
                          height: 9,
                          width: 7,
                          margin: EdgeInsets.only(
                            top: 43,
                            bottom: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: SizedBox(
                            height: 83,
                            child: VerticalDivider(
                              width: 1,
                              thickness: 1,
                              color: Colors.red[600],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: 'asset/images/img_close.svg',
                          height: 9,
                          width: 7,
                          margin: EdgeInsets.only(
                            left: 4,
                            top: 43,
                            bottom: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                      top: 39,
                      bottom: 39,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: 'asset/images/img_vector.svg',
                          height: 30,
                          width: 27,
                        ),
                        Container(
                          height: 8,
                          width: 34,
                          decoration: BoxDecoration(
                            color: Colors.amber[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_red_600.svg',
            height: 86,
            width: 42,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 85,
              top: 27,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_yellow_700.svg',
            height: 86,
            width: 38,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 114,
              top: 27,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_facebook.svg',
            height: 85,
            width: 30,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 145,
              top: 27,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_yellow_700_86x30.svg',
            height: 86,
            width: 30,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 27),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_facebook_red_600.svg',
            height: 86,
            width: 31,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 27,
              right: 143,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_info.svg',
            height: 86,
            width: 39,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 27,
              right: 112,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_location.svg',
            height: 86,
            width: 41,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 27,
              right: 83,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_yellow_a100_01.svg',
            height: 13,
            width: 36,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 103,
              top: 13,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_yellow_a100_01.svg',
            height: 13,
            width: 36,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 13,
              right: 98,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_yellow_300_01.svg',
            height: 27,
            width: 102,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_yellow_a100.svg',
            height: 19,
            width: 102,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 7),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_green_600.svg',
            height: 40,
            width: 66,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 37),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 33,
              width: 58,
              margin: EdgeInsets.only(right: 44),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: 'asset/images/img_vector_light_green_500.svg',
                    height: 33,
                    width: 58,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: 'asset/images/img_vector_green_600_31x21.svg',
                    height: 31,
                    width: 21,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_notification.svg',
            height: 34,
            width: 75,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 3),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_notification.svg',
            height: 34,
            width: 75,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 40),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_vector_light_green_500_40x48.svg',
            height: 40,
            width: 48,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 37),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 1),
              child: Text(
                "Budget Bites",
                style: TextStyle(
                  color: Color(0xFFE4442A),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
