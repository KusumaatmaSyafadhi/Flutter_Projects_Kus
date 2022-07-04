import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyekakhir/halaman1.dart';
import 'package:proyekakhir/halaman2.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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

      // ignore: prefer_const_constructors
      bottomNavigationBar: GNav(
        tabs: const [

          GButton(
            icon: Icons.home,
            text: 'Home',
            
            ),
          GButton(icon: Icons.search, text: 'Search'),
          GButton(icon: Icons.favorite, text: 'Favorites')
          
        ]),  

        

      body: Center(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Image.network('https://cdn.shopify.com/s/files/1/1845/0077/products/b248a691-bb24-415b-b2fa-c191a1019912_6dfb1282-3538-4d34-bc42-1a0489b3c5d2_800x.jpg?v=1571472797')
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