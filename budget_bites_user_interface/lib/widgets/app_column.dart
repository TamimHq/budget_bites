import 'package:budgets_bites/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../core/utils/dimension.dart';
import 'big_text.dart';
import 'custom_icon.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(size: Dimensions.font26, text:text),
        // SizedBox(height: Dimensions.height5,),
        // Row(
        //   children: [
        //     Wrap(
        //       children: List.generate(5, (index) =>Icon(Icons.star,color: Colors.greenAccent,) ),
        //     ),
        //     SizedBox(width: 5,),
        //     SmallText(text: "4.5",size: Dimensions.font10,),
        //     SizedBox(width: 5,),
        //     SmallText(text: "12876" ,size: Dimensions.font10,),
        //     SizedBox(width: 5,),
        //     SmallText(text: "comments",size: Dimensions.font10,),
        //
        //   ],
        // ),
        SizedBox(height: Dimensions.height5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(icon: Icons.circle_sharp, text: "Normal", color: Colors.black, iconColor: Colors.yellow, size: 10),
            IconAndText(icon: Icons.location_on_outlined, text: "1.7km", color: Colors.black, iconColor: Colors.greenAccent, size: 10),
            IconAndText(icon: Icons.access_time_filled_rounded, text: "Normal", color: Colors.black, iconColor: Colors.yellow, size: 10),

          ],
        )
      ],
    );
  }
}
