import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestIteamWidget extends StatelessWidget {
  const NewestIteamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child:
          Padding(padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              for(int i=0;i<10;i++)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 3,
                     blurRadius: 10,
                     offset: const Offset(0, 3),
                   ),]
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/drink.png",
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Drinks",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Taste our Drinks, We provide Good Drinks",
                            style: TextStyle(
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {},
                          ),
                          
                          Text(
                              "\$10",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 26,
                          ),


                        ],
                      ),),
                  ],
                ),
              ),
            ),
            ],
          ),),

    );
  }
}
