import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  FontWeight? weight;
  double size;
  TextOverflow overFlow;

   BigText({super.key,
    required this.text,
     this.weight=FontWeight.w700,
     this.color,
    this.overFlow=TextOverflow.ellipsis,
    this.size =20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(color:color,fontWeight: weight,fontSize:size, ),
    );
  }
}
