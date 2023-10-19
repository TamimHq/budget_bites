import 'package:flutter/material.dart';


final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  backgroundColor: Colors.red[900],
  foregroundColor: Colors.white,
    padding:  EdgeInsets.symmetric(horizontal: 180.7),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  )

);
final ButtonStyle buttonSecondary = TextButton.styleFrom(
      foregroundColor: Colors.blue,
      textStyle: TextStyle(fontSize:10),

);