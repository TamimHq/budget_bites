import 'package:budgets_bites/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  double size;
  final String text;
  final Color color;
  final Color iconColor;
   IconAndText({super.key, required this.icon, required this.text, required this.color, required this.iconColor, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text: text, size: size,color: color,),
      ],
    );
  }
}
