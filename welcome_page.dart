import 'package:flutter/material.dart';
import 'package:proyekakhir/register_page.dart';
import 'package:proyekakhir/styling.dart';

import 'login_page.dart';


class  welcomepage extends StatelessWidget {
  const welcomepage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(

        child:Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Image.network('https://static.vecteezy.com/system/resources/previews/000/218/549/non_2x/women-character-skin-color-tone-vector-flat-illustration.jpg'),

            Image.network('https://freepngclipart.com/download/school/56882-bending-euclidean-vector-technology-free-clipart-hd.png', width: 256, height: 128,),

            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 15,top: 29),
              child:ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return loginpage();
                }));
              },
              child: Text('Login', style: LoginText,),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(30, 144, 255, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            ),),

            Container(
              padding: EdgeInsets.only(right: 22,left: 22),
              margin: EdgeInsets.only(bottom: 29),
              height: 56,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return registerpage();
                  }));
                },
                child: Text('Register', style: TextStyle(color: Colors.black)),
                style: TextButton.styleFrom(
                    side: BorderSide(color: Color.fromRGBO(30, 144, 255, 1) ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),
            ),

            TextButton(onPressed: (){},
                child: Text('Login As Guest'))//Tambahin style RegisterText
          ],

        ) ,)
    );
  }
}
