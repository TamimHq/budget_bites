import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompleteProfileScreen extends StatefulWidget{
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {

  TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.pink,
          leading: IconButton(onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,)),

          title: const Text("Fill in your bio to get started ",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),

        body: Center(
          child: Container(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(

                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.yellowAccent,
                          )

                      ),

                      hintText: "Your Username"
                  ),


                ),
                const SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.yellowAccent,
                          )

                      ),

                      hintText: "FullName"
                  ),

                ),
                const SizedBox(height: 5,),

                TextField(
                  controller: date,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.calendar_today),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Select your Birth Date"
                  ),

                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,

                      firstDate: DateTime(1950),
                      lastDate: DateTime(2015),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        date.text = DateFormat.yMMMMEEEEd().format(pickedDate);
                      });
                    }
                  },

                ),
                const SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.yellowAccent,
                          )

                      ),

                      hintText: "Name of the Store"
                  ),

                ),
                const SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.yellowAccent,
                          )

                      ),

                      hintText: "Store Location"
                  ),

                ),
                const SizedBox(height: 10,),
                ElevatedButton(onPressed: () {},
                  child: const Text(
                    'Complete', style: TextStyle(fontSize: 20,),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.red),
                    foregroundColor:
                    MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                            horizontal:
                            MediaQuery
                                .of(context)
                                .size
                                .width *
                                0.1)),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(50)),
                        )),
                  ),
                ),
              ],
            ),


          ),

        )
    );
  }
}
