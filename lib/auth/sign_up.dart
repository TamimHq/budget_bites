
import 'package:budgets_bites/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context)=>
      Builder(
        builder: (context) {
          return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/SIGN UP.png'),fit: BoxFit.cover
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
                          height: 7,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Rewrite Password',
                              border: OutlineInputBorder(
                                borderRadius : BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.black),

                              )
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                            Row(
                              children: [
                                ElevatedButton(

                                  style:ButtonStyle(
                                       backgroundColor: MaterialStateProperty.all(Colors.red[900]),
                                        foregroundColor: MaterialStateProperty.all(Colors.white),
                                       padding: MaterialStateProperty.all( EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1)),
                                       shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                         )),
                                         ),
                                  child: const Text('SIGNUP',),

                                  onPressed:()
                                  {
                                    print('Completed');
                                  },
                                ),
                              ],
                            ),
                         const SizedBox(
                           height: 15,
                         ),


                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text('Alreay have an account?',style:TextStyle(fontSize: 10) ,),
                             const SizedBox(
                               width: 10,
                             ),

                             InkWell(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context)=>const SignIn()));
                                 },
                                 child: Text('sign in',style: TextStyle(fontSize: 10,color: Colors.blueAccent[200]),)),
                           ],
                         ),

                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 25.0)),
                        Row(
                          children: [
                            Expanded(child: Divider(
                              thickness: 1.0,
                              color: Colors.grey[600],
                            )),
                            const Text('or Sign up with'),
                            Expanded(child: Divider(
                              thickness: 1.0,
                              color: Colors.grey[600],
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


                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              const Text('By siging up you agree with our',style: TextStyle(fontSize: 10),),
                            InkWell(
                                onTap: (){
                                 print('a') ;
                                },
                                child: Text('T&C',style: TextStyle(fontSize: 10,color: Colors.blueAccent[200]),)),
                            const Text('and',style: TextStyle(fontSize: 10),),
                            InkWell(
                                onTap: (){
                                  print('dont');
                                },
                                child: Text('privacy and policy',style: TextStyle(fontSize: 10,color: Colors.blueAccent[200]),)),


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
      );
}