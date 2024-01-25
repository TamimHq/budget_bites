import 'package:flutter/material.dart';


class AddBankScreen extends StatefulWidget{
  const AddBankScreen({super.key});

  @override
  State<AddBankScreen> createState() => _AddBankScreenState();
}

class _AddBankScreenState extends State<AddBankScreen> {

  String bankValue = "";
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text('Add A Bank Account'),

      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width,

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset('asset/images/img_rectangle_1799.png',height: 450,width: 450,),

                  Container(height: 5,),
                  InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),

                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        menuMaxHeight: 350,
                        isDense: true,
                        value: bankValue,

                        onChanged: (String? newValue){
                          setState(() {
                            bankValue = newValue!;
                          });
                        },
                        items: [
                          DropdownMenuItem<String>(child: Text("Select a Bank"),value: "",),
                          DropdownMenuItem<String>(child: Text("EBL"),value: 'EBL',),
                          DropdownMenuItem<String>(child: Text("Dutch Bangle Bank"),value: 'Dutch Bangle Bank',),
                        ],
                      ),
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
      ),

    );
  }
}