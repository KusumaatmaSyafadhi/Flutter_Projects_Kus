
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class halamanpertama extends StatelessWidget {
  final String tautanAPI = 'https://dummyjson.com/products/category/laptops';
  Future<List<dynamic>> TampilData() async {
    var hasil = await http.get(Uri.parse(tautanAPI));
    return json.decode(hasil.body)['products'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text('Laptops', style: TextStyle(color: Colors.black),)
        ),

        bottomNavigationBar: const GNav(
        tabs: [

          GButton(
            icon: Icons.home,
            text: 'Home',
            
            ),
          GButton(icon: Icons.search, text: 'Search'),
          GButton(icon: Icons.favorite, text: 'Favorites')
          
        ]),

      body: SafeArea(
        child: Container(
        child: FutureBuilder<List<dynamic>>(
          future: TampilData(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(snapshot.data[index]['thumbnail']),
                    ),
                    title: Text(snapshot.data[index]['title']),
                    subtitle: Text(snapshot.data[index]['price'].toString()+' US\$'),
                  );
                },
              );
            } else{
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      )  

    );
  }
}