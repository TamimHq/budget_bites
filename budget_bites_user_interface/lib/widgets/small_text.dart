import 'package:budgets_bites/core/utils/dimension.dart';
import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  double height;

  SmallText({super.key,
    required this.text,
    this.color,
     this.height=1.2,
    this.size=12,


  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color:color,fontSize:size,height: height ),
    );
  }
}
