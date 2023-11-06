import 'package:budgets_bites/FirebaseAuthentication/firebase_auth_signin.dart';
import 'package:budgets_bites/auth/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

import '../forget_password/reset_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();

  }


  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/SIGN IN.png'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 28,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5),
                    child: Column(
                      children: [
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
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
                        const SizedBox(
                          height: 7,
                        ),
                        TextField(
                          controller: _passwordController,
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
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.black),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text(
                                'Forget Password',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.lightBlue[200]),
                              ),
                              onPressed: () {
                                ForgetPasswordScreen.buildShowModalBottomSheet(context);
                              },
                            ),
                          ],
                        ),
                        ElevatedButton(
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
                          child: const Text(
                            'Sign in',
                          ),
                          onPressed: () {
                            _signIn();
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(fontSize: 10),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUp()));
                                },
                                child: Text(
                                  'sign up',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blueAccent[200]),
                                )),
                          ],
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
              ],
            ),
          ),
        );
      });



  void _visiblePassword() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }
  void _signIn() async{
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if(user != null){
      const SnackBar(
        content: Text("Log in Success"),
      );
    }
    else{
      const SnackBar(
        content: Text("Error!"),
      );
    }
  }
}
