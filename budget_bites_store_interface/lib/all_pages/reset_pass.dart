import 'dart:html';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class resetPassword extends StatefulWidget {
  class resetPassword ({Key? key }) : super(key: key);

  @override
  State<resetPassword> createState() => resetPassword();

}

class resetPasswordState extends State<resetPassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();

  }
  
    }