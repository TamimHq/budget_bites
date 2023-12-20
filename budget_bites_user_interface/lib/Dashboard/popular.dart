import 'package:flutter/material.dart';

class Popularwidget extends StatelessWidget {
  const Popularwidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 170,
                    height: 230,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset("assets/images/drink.png",height: 120,),
                          ),
                          Text(
                            "Soft Drinks",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2,),
                          Text(
                            "Soft Drinks",
                            style: TextStyle(
                              fontSize: 15, ),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",),
                              Icon(Icons.favorite_border,color:Colors.red),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
