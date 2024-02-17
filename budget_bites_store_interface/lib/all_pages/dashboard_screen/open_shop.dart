import 'package:flutter/material.dart';

class OpenShop extends StatefulWidget{
  const OpenShop({super.key});

  @override
  State<OpenShop> createState() => _OpenShopState();
}

class _OpenShopState extends State<OpenShop> {
  bool light =true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Switch(
        value: light,
        activeColor: Colors.red,
        onChanged: (bool value){
          setState(() {
            light=value;
          });
        });
  }
}