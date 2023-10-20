
import 'package:budgets_bites/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:budgets_bites/button/button.dart';
import 'package:auth_buttons/auth_buttons.dart';

class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context)=> Container(
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
              padding: const EdgeInsets.only(left: 10,top:380) ,
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
                          borderSide: const BorderSide(color: Colors.black),
                        )
                      ),
                    ),
                    const SizedBox(
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
                            borderSide: const BorderSide(color: Colors.black),

                          )
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        ElevatedButton(

                          style:buttonPrimary,
                          child: const Text('SIGNUP',),

                          onPressed:()
                          {
                            print('Completed');
                          },
                        )
                      ],
                    ),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         const Text('Alreay have an account?',style:TextStyle(fontSize: 10) ,),

                         TextButton(
                           style: buttonSecondary,
                           child: const Text('SIGN IN'),
                           onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context)=>const SignIn()),
                             );
                           },
                         )
                       ],
                     ),

                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 25.0)),
                    Row(
                      children: [
                        Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                        const Text('or Sign up with'),
                        Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GoogleAuthButton(
                          onPressed: () {},
                          style: const AuthButtonStyle(
                            buttonType: AuthButtonType.icon,
                            iconType: AuthIconType.secondary,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        FacebookAuthButton(
                          onPressed: () {},
                          style: const AuthButtonStyle(
                            buttonType: AuthButtonType.icon,
                            iconType: AuthIconType.secondary,
                          ),
                        ),
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