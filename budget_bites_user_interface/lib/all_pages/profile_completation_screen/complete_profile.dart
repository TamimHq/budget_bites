import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_image_view.dart';

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

          backgroundColor: Color(0xFFEA2242),
          leading: IconButton(onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,)),

          title: const Text("Fill in your bio to get started ",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),

          ),
          automaticallyImplyLeading: false,
        ),


        body: SingleChildScrollView(
          child: Form(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80,),
          
                    TopDesign(),
          
                    SizedBox(height: 28,),
                    TextFormField(
          
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
                    TextFormField(
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
          
                    TextFormField(
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
                    TextFormField(
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
                    TextFormField(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
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
                  ],
                ),
              ),
          
          
          ),
        ),
       extendBodyBehindAppBar: true,
    );
  }
}

class TopDesign extends StatelessWidget {
  const TopDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 163,
    width: MediaQuery.sizeOf(context).width,
    child: Stack(
        alignment: Alignment.topLeft,
        children: [
      CustomImageView(
          imagePath: 'asset/images/img_ellipse.png',
          height: 363,
          width: MediaQuery.sizeOf(context).width,
          alignment: Alignment.center),
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 33, top: 60),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                          SizedBox(height: 30),
                         Padding(
                          padding: EdgeInsets.only(right: 57),

                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                 height: 61,
                                  width: 60,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                color: Colors.yellow,
                                ),
                               alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                  imagePath: 'asset/images/img_camera.svg')
                                                  ),
                            ),
                ),

              ]
                )
              ]
              )
          ),
      ),
    ]
    )
    );
  }
}
