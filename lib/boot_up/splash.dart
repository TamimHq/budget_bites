import 'package:budgets_bites/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin{

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    
    Future.delayed(const Duration(seconds: 2),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const SignIn()),);
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();

  }
  @override
  Widget build(BuildContext context) => Builder(
    builder: (context) {
      return Scaffold(
          body:Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red.shade800,Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            ),

              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/LOGO.png'),
                  const Text('Budget Bites',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontFamily: 'Poppins'),)
                ],
              ),
            ),
          );
    }
  );
}
