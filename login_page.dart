// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:proyekakhir/menu.dart';

import 'package:proyekakhir/register_page.dart';
import 'package:proyekakhir/styling.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: IconThemeData(color: Colors.black),),
      body: SafeArea(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            SizedBox(height: 35),

            Image.network('https://raw.githubusercontent.com/KusumaatmaSyafadhi/Flutter_Projects_Kus/main/56882-bending-euclidean-vector-technology-free-clipart-hd.png', width: 194, height: 67,),

            SizedBox(height: 35),

            Padding(
              padding: const EdgeInsets.only(right: 22, left: 22),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username'
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15, right: 22, left: 22),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                  ),
                ),
              ),
            ),
              


            Padding(
              padding: const EdgeInsets.only(top: 12, right: 22, left: 242),
              child: Container(
                child: TextButton(onPressed: (){}, 
                child: Text(
                  'Forgot Password?', 
                  style: TextStyle(fontSize:10, color: Colors.black),))
              ),
            ),

            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 35,top: 30),
              child:ElevatedButton(
              onPressed: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return MainMenu();
                }));
              },
              child: Text('Login', style: LoginText,),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(30, 144, 255, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            ),),
            

            Padding(
              padding: const EdgeInsets.only(right: 137, left: 137),
              child: Text('Or Login With')
            ),

            

            Padding(
              padding: const EdgeInsets.only(top: 22, right: 22),
              child: Row(
                
                children: [

                  Container(
                    height: 56,
                    width: 105,
                    margin: EdgeInsets.only(left: 22),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        right: BorderSide(width: 1, color: Colors.grey),
                        left: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey)),
                      image: DecorationImage(
                        image: NetworkImage('https://raw.githubusercontent.com/KusumaatmaSyafadhi/Flutter_Projects_Kus/main/facebook_logo.png'),)
                    ),

                  ),

                  Container(
                    height: 56,
                    width: 105,
                    
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        right: BorderSide(width: 1, color: Colors.grey),
                        left: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey)),
                      image: DecorationImage(
                        image: NetworkImage('https://raw.githubusercontent.com/KusumaatmaSyafadhi/Flutter_Projects_Kus/main/google_logo.png'),)
                    ),

                  ),

                  Container(
                    height: 56,
                    width: 105,
                    
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        right: BorderSide(width: 1, color: Colors.grey),
                        left: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey)),
                      image: DecorationImage(
                        image: NetworkImage('https://raw.githubusercontent.com/KusumaatmaSyafadhi/Flutter_Projects_Kus/main/apple_logo.png'),)
                    ),

                  )
                ],)
            ),

            Padding(
              padding: EdgeInsets.only(top: 155),
              child: Column(
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return registerpage();
                      }));
                    },
                     child: Text('Register Now'))
                ],
              ),
              )

            
            
          ],
        ) ,
      ),
    );
  }
}
