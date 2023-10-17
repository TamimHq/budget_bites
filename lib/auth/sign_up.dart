import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:budgets_bites/button/button.dart';

class SignUp extends StatelessWidget{
  const SignUp({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/sign_up.png'),fit: BoxFit.cover
        ),
      ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,top:360) ,
              child: Text('Sign Up',style: TextStyle(color: Colors.red[900],fontSize: 28,fontFamily: 'Montserrat',fontWeight: FontWeight.w700 ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius : BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                        )
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius : BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),

                          )
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        ElevatedButton(

                          style:buttonPrimary,
                          child: Text('SIGNUP'),

                          onPressed:()
                          {
                            print('Completed');
                          },
                        )
                      ],
                    )

                  ],
                ),
              ),

            )

          ],
        ),
      ),
    );


  }
}