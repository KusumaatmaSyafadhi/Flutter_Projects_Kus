import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyekakhir/halaman1.dart';
import 'package:proyekakhir/halaman2.dart';

import 'package:lottie/lottie.dart';

class halaman_arah extends StatelessWidget {
  const halaman_arah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: IconThemeData(color: Colors.black),),

      
        

        

      body: Center(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Lottie.network('https://assets7.lottiefiles.com/packages/lf20_s8pbrcfw.json')
                ],
              ),
              ),

            Container(
              padding: EdgeInsets.only(left: 22, right: 22),
              height: 56,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return halamanpertama();
                  }));
                },
                child: Text('Laptops')),
            ),

              SizedBox(height:20),

            Container(
              padding: EdgeInsets.only(left: 22, right: 22),
              height: 56,
              width: 56,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                    return halamankedua();
                  }));                
              }, child: Text('Smartphones')))
          ],
        ),
      ),
    );
    
  }
}