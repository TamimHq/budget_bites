// ignore

import 'package:flutter/material.dart';

class reset_pass extends StatelessWidget {
  const reset_pass({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
        title: Text(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            'Reset your password here'),
        backgroundColor: const Color.fromARGB(255, 153, 29, 29),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, top: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  style: TextStyle(fontSize: 16),
                  'select which contact details should we use to reset your password'),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'new paasword',
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black)),
                hintText: 'Confirm Password',
                suffixIcon: Icon(Icons.visibility),
              )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEA2242),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15), // Padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Border radius
                        ),
                      ),
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
