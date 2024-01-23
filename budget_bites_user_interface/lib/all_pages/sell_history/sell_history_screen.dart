import 'package:flutter/material.dart';

class SellHistoryScreen extends StatefulWidget{
  const SellHistoryScreen({super.key});

  @override
  State<SellHistoryScreen> createState() => _SellHistoryScreenState();
}

class _SellHistoryScreenState extends State<SellHistoryScreen> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        title: Text('Budget Bites'),
        centerTitle: true,

        leading: IconButton( onPressed: (){},
        icon: Icon(Icons.menu),),
        backgroundColor: Colors.redAccent,

        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        color: Colors.red,
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Hello'),
            ElevatedButton(onPressed: (){},
                child: Text('Press me'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[900],
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(8), // Border radius
                ),
              ),
            ),

          ],


        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label:'home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label:'setting'),
          ],
        onTap: (index){
            setState((){
              _currentIndex =index;
            });


        },
      ),



    );
  }
}