import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget{
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(horizontal: 23,vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset('asset/images/img_tablet_login_pana.svg',height:282,width: 342,),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Text('SignIn',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.red[900]),),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration:  InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Colors.black),
                    )),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    suffixIcon: InkWell(
                      child: const Icon(
                        Icons.visibility,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Colors.black),
                    )),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){},
                  child: Text('Forget Password?',style: TextStyle(fontSize: 10,color: Colors.blueAccent[700]),),
                ),
              ),

              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(onPressed: (){},
                  child: Text(
                    'Sign In',style: TextStyle(fontSize: 15,),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.red[900]),
                    foregroundColor:
                    MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            horizontal:
                            MediaQuery.of(context).size.width *
                                0.1)),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(50)),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0)),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[600],
                      )),
                  const Text('or Login with'),
                  Expanded(
                      child: Divider(
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
    );
  }

}