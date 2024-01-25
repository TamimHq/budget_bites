import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                accountName: Text("H",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold
                ),),
                accountEmail: Text("y",style: TextStyle(fontSize: 16),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
                ),
              )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title:Text("Home",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),) ,
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title:Text("My Account",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),) ,
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.cart,
              color: Colors.red,
            ),
            title:Text("My Order",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),) ,
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            title:Text("My Wish List",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),) ,
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.red,
            ),
            title:Text("Settings",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),) ,
          ),

          InkWell(
            onTap: (){},

            child: const ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title:Text("Log Out",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),) ,
            ),
          ),
        ],
      ),
    );
  }
}
