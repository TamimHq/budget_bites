import 'package:flutter/material.dart';


class AddBankScreen extends StatelessWidget{
  const AddBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return   Scaffold(
appBar: AppBar(
  backgroundColor: Colors.lightGreen,
  leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new)),
  title: const Text('Add A Bank Account'),

),

      body:

      Center(child: Container(
        width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('asset/images/img_rectangle_1799.png',height: 350,width: 240,),

             Container(height: 5,),
              TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                  hintText: "Select The Bank Name",
                  suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down,color: Colors.deepPurple,size: 65,))

              ),
               ),
               Container(height: 15,),
               TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)

                    ),
                  prefixIcon: const Icon(Icons.info,color: Colors.brown,),
                  hintText: "Name On The Account Holder"
                ),
              ),
               Container(height: 15,),
               TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    prefixIcon: const Icon(Icons.message_outlined,color: Colors.teal,),
                    hintText: "Account Number"
                ),
              ),
                Container(height: 25,),
               ElevatedButton(onPressed: (){},
                 child: const Text(
                  'Next',style: TextStyle(fontSize: 20,),
                ),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.pink[900]),
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
   ]
          )
      )
      ),

    );

  }


}