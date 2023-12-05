import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(icon: 
        Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: (){
          Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text('Amit' ,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.bluetooth_connected),
          IconButton(onPressed: (){ print("Hello Omar");},icon: Icon(Icons.abc),)
        ],
      ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                 clipBehavior: Clip.antiAliasWithSaveLayer,
               child:  Stack(
                 alignment: Alignment.bottomRight,
                 children: [
                   const Padding(
                     padding: EdgeInsets.all(1),
                     child: Image(image:
                     NetworkImage(
                       'https://as2.ftcdn.net/v2/jpg/04/27/16/05/1000_F_427160582_w0D5Z01pVaz32w7JzzNWTtE2n1VvvKmi.jpg',
                     ),
                       fit: BoxFit.cover,
                       width: double.maxFinite,
                     ),
                   ),
                   Container(
                     color: Colors.deepOrange.withOpacity(0.2),
                     width: double.maxFinite,
                     // decoration: BoxDecoration(
                     //    borderRadius: BorderRadius.vertical(top: Radius.circular(10))
                     // ),
                     child: const Center(
                       child: Text("AmiT",
                         style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
               ),
               const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Image(image:
                 NetworkImage(
                     'https://as2.ftcdn.net/v2/jpg/03/23/14/99/1000_F_323149913_9umH1mIRXGD2NhyWaNfKQDgZJY69WrmV.jpg'
                 ),
                   fit: BoxFit.cover,
                   width: double.maxFinite,
                 ),
               ),
               const Padding(
                 padding:  EdgeInsets.all(8.0),
                 child: Image(image:
                 NetworkImage(
                     'https://t3.ftcdn.net/jpg/02/96/93/50/240_F_296935084_2jmvOqmYN3Nt8y4BIc2cnvqPdY9YAAT2.jpg'
                 ),
                   fit: BoxFit.cover,
                   width: double.maxFinite,
                 ),
               ),
               const Padding(
                 padding:  EdgeInsets.all(8.0),
                 child: Image(image:
                 NetworkImage(
                   'https://t3.ftcdn.net/jpg/03/57/37/06/240_F_357370678_HLVoLOmgCqHO7rsdbi77Wz2NgA2KkzQr.jpg'
                 ),
                   fit: BoxFit.cover,
                   width: double.maxFinite,
                 ),
               ),
             ],
           ),
         ),
       ),

    );
  }
}
