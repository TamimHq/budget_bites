import 'package:budgets_bites/auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:budgets_bites/button/button.dart';
import 'package:auth_buttons/auth_buttons.dart';

class SignIn extends StatefulWidget{
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context)=> Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/sign_in.png'),fit: BoxFit.cover
      ),
    ),
    child:  Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10,top:380) ,
            child: Text('Sign in',style: TextStyle(color: Colors.red[900],fontSize: 28,fontFamily: 'Montserrat',fontWeight: FontWeight.w700 ),),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                     TextButton(
                        child:  Text('Forget Password',style: TextStyle(fontSize: 10,color: Colors.lightBlue[200]),),
                        onPressed: (){
                          print('hello');
                        },
                      )
                    ],
                    ),
                  Row(
                    children: [
                      ElevatedButton(

                        style:buttonPrimary,
                        child: const Text('Sign in',),

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
                      const Text("Don't have an account?",style:TextStyle(fontSize: 10) ,),

                      TextButton(
                        // style: buttonSecondary,
                        child: Text('SIGN UP',style: TextStyle(fontSize: 10,color: Colors.lightBlue[200]),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const SignUp()),
                          );
                        },
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 25.0)),
                  Row(
                    children: [
                      Expanded(child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[600],
                      )),
                      const Text('or Login with'),
                      Expanded(child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[600],
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
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

          ),

        ],
      ),
    ),
  );
}