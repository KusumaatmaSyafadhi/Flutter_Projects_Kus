import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:proyekakhir/styling.dart';

class profilpengguna extends StatefulWidget {
  const profilpengguna({Key? key}) : super(key: key);

  @override
  State<profilpengguna> createState() => _profilpenggunaState();
}

class _profilpenggunaState extends State<profilpengguna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text('My Profile', style: TextStyle(color: Colors.black),)
        ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 30),
              child: Container(
                child: Image.network('https://raw.githubusercontent.com/KusumaatmaSyafadhi/Flutter_Projects_Kus/main/Kusumaatma%20Syafadhi(1).png', width: 256, height: 128),
              ),
              ),
              Column(
                children: [
                  Divider(),
                  Text('Kusumaatma Syafadhi', style: NamaProfil ),
                  Text('NIM : 19.0504.0064', style: NamaProfil),
                  Divider(),
                  Text('Hello, My name is Kusumaatma Syafadhi. I study Informatics Engineering in UNIMMA. You can visit my github for more of my projects. It\'s KusumaatmaSyafadhi on github'),
                  
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:
                    Lottie.network('https://raw.githubusercontent.com/KusumaatmaSyafadhi/Flutter_Projects_Kus/main/68689-cute-astronaut-read-book-on-planet-cartoon.json', height: 128),
                    )
                ],
              )
          ],),)
    );
  }
}