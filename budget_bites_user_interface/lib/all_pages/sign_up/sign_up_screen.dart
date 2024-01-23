import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.symmetric(horizontal: 23,vertical: 12),
          child: Column(
            children: [
              SvgPicture.asset('asset/images/img_sign_up_pana.svg',height:282,width: 342,),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Text('SignUp',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.red[900]),),
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
                decoration:  InputDecoration(
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
              SizedBox(height: 10,),
              TextFormField(
                decoration:  InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Name',
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Colors.black),
                    )),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration:  InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Store Name',
                    prefixIcon: const Icon(
                      Icons.store,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Colors.black),
                    )),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration:  InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Phone Number',
                    prefixIcon: const Icon(
                      Icons.mobile_friendly,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Colors.black),
                    )),
              ),
              SizedBox(height: 10,),

              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(onPressed: (){},
                  child: Text(
                    'Sign Up',style: TextStyle(fontSize: 15,),
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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?',style:TextStyle(fontSize: 15) ,),
                  const SizedBox(
                    width: 5,
                  ),

                  InkWell(
                      onTap: (){
                      },
                      child: Text('sign in',style: TextStyle(fontSize: 15,color: Colors.blueAccent[200]),)),
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
                      onTap: () {
                        print('dont');
                      },
                      child: Text(
                        'privacy and policy',
                        style: TextStyle(
                            fontSize: 10, color: Colors.blueAccent[200]),
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