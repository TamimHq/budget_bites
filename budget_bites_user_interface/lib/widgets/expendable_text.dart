import 'package:budgets_bites/core/utils/dimension.dart';
import 'package:budgets_bites/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpendableText extends StatefulWidget {
  final String text;
  const ExpendableText({super.key, required this.text});

  @override
  State<ExpendableText> createState() => _ExpendableTextState();
}

class _ExpendableTextState extends State<ExpendableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight =Dimensions.screenHeight/5.45;

  @override
  void initState(){
    super.initState();
  if(widget.text.length>textHeight){
    firstHalf=widget.text.substring(0,textHeight.toInt());
    secondHalf=widget.text.substring(textHeight.toInt()+1,widget.text.length);
  }else{
    firstHalf=widget.text;
    secondHalf="";
  }

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf, size: Dimensions.font20):Column(
        children: [
          SmallText(text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf), size: Dimensions.font20,height: 1.8,),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
              
            },
            child: 
            Row(
              children: [
                SmallText(text: hiddenText?"Show more":"Show less", size: Dimensions.font20,color: Colors.red,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.red,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
