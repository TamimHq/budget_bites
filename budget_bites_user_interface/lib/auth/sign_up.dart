
import 'package:budgets_bites/auth/sign_in.dart';
import 'package:budgets_bites/auth/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../FirebaseAuthentication/exception_handelar_signup.dart';
import 'signup_controller.dart';

class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();

}
class _SignUpState extends State<SignUp> {
  final controller =Get.put(SignUpController());
  final _formKey= GlobalKey<FormState>();

  bool isPasswordHidden = true;
  bool isRewritePasswordHidden = true;

  // Function to check if the passwords match
  bool doPasswordsMatch() {
    return controller.passwordController.text == controller.rewritePasswordController.text;
  }

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
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.40) ,
                      child: Text('Sign Up',style: TextStyle(color: Colors.red[900],fontSize: 28,fontFamily: 'Montserrat',fontWeight: FontWeight.w700 ),),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: controller.emailController,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Email',
                                prefixIcon: const Icon(
                                  Icons.email,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.black),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null; // Return null if the input is valid
                              },
                            ),

                            TextFormField(
                              controller: controller.passwordController,
                              obscureText: isPasswordHidden,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Password',
                                  prefixIcon: const Icon(
                                    Icons.key,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: _visiblePassword,
                                    child: const Icon(
                                      Icons.visibility,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius : BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.black),
                                  )
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                } else if (!RegExp(r'^(?=.*[0-9])(?=.*[!@#$%^&*(),.?":{}|<>])[a-zA-Z0-9!@#$%^&*(),.?":{}|<>]+$').hasMatch(value)) {
                                  return 'Password must contain at least one special character and one number';
                                }
                                return null; // Return null if the input is valid
                              },
                            ),
                            TextFormField(
                              controller: controller.rewritePasswordController,
                              obscureText: isRewritePasswordHidden,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Rewrite Password',
                                  prefixIcon: const Icon(
                                    Icons.key,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: _visiblePasswords,
                                    child: const Icon(
                                      Icons.visibility,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius : BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.black),

                                  )
                              ),
                            ),

                            if (!doPasswordsMatch())
                              const Text(
                                "Passwords do not match",
                                style: TextStyle(color: Colors.red),
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

                                      onPressed:() async
                                      {
                                      if (doPasswordsMatch()&& _formKey.currentState!.validate()) {
                                        // Passwords match and are strong, proceed with sign-up

                                          final user = UserModel(
                                            email: controller.emailController.text.trim(),
                                            password: controller.passwordController.text.trim(),
                                          );

                                         await SignUpController.instance.registerUser(user.email, user.password);
                                          await SignUpController.instance.createUser(user);



                                          // Clear the text fields
                                          controller.emailController.clear();
                                          controller.passwordController.clear();
                                          controller.rewritePasswordController.clear();

                                          // Navigate to Dashboard on successful signup

                                      }
                                      else {
                                          // Passwords do not match or are weak, display an error message or handle accordingly
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                            content: Text('Sign UP Failur'),
                                        duration: Duration(seconds: 3)
                                            ));
                                        }

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
                                 const Text('Alreay have an account?',style:TextStyle(fontSize: 15) ,),
                                 const SizedBox(
                                   width: 5,
                                 ),

                                 InkWell(
                                     onTap: (){
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context)=>const SignIn()));
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
            ),
          ),
    );
        }
      );
  void _visiblePassword(){
    setState(() {
        isPasswordHidden = ! isPasswordHidden;
    });
  }
  void _visiblePasswords(){
    setState(() {
      isRewritePasswordHidden = ! isRewritePasswordHidden;

    });
  }

  void showErrorMessage(SignUpWithEmailAndPasswordFailure failure) {
  final snackBar = SnackBar(content: Text(failure.message));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  }

