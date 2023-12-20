import 'package:flutter/material.dart';

import '../Dashboard/drawer.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Find your bio to get started'),
        backgroundColor: Colors.blueAccent,
        leading: IconButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                const DrawerWidget(),
              ));
        },
            icon:const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: Container(
              color: Colors.blueAccent,
              height: 50.0,
              child: const Center(
                child: Icon(
                  Icons.add_a_photo_outlined,
                  size: 50.0,
                ),
              ),
            )

        ),


      ),
         body: SingleChildScrollView(
           child: Column(

             children: [
            const SizedBox(height: 65),
               TextField(
                 decoration: InputDecoration(
                     fillColor: Colors.white,
                     filled: true,
                     hintText: 'Username',
                     border: OutlineInputBorder(
                       borderRadius : BorderRadius.circular(10),
                       borderSide: const BorderSide(color: Colors.black),
                     )
                 ),
               ),
               SizedBox(height: 20),
               TextField(
                 decoration: InputDecoration(
                     fillColor: Colors.white,
                     filled: true,
                     hintText: 'Firstname',
                     border: OutlineInputBorder(
                       borderRadius : BorderRadius.circular(10),
                       borderSide: const BorderSide(color: Colors.black),
                     )
                 ),
               ),
               const SizedBox(height: 20),
               TextField(
                 decoration: InputDecoration(
                     fillColor: Colors.white,
                     filled: true,
                     hintText: 'Lastname',
                     border: OutlineInputBorder(
                       borderRadius : BorderRadius.circular(10),
                       borderSide: const BorderSide(color: Colors.black),
                     )
                 ),
               ),
               const SizedBox(height: 20),
               TextField(
                 decoration: InputDecoration(
                     fillColor: Colors.white,
                     filled: true,
                     hintText: 'Date Of Birth',
                     border: OutlineInputBorder(
                       borderRadius : BorderRadius.circular(10),
                       borderSide: const BorderSide(color: Colors.black),
                     )
                 ),
               ),
               const SizedBox(height: 80),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(

                     style:ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Colors.red),
                       foregroundColor: MaterialStateProperty.all(Colors.white),
                       padding:MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1)),

                       shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(50)),
                       )),
                     ),
                     child: const Text('Complete',),

                     onPressed:()
                     {
                       print('Completed');
                     },
                   ),
                 ],
               ),
             
        ],
           ),
         ),

    );
  }

}

