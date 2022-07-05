import 'package:flutter/material.dart';

class profilpengguna extends StatefulWidget {
  const profilpengguna({Key? key}) : super(key: key);

  @override
  State<profilpengguna> createState() => _profilpenggunaState();
}

class _profilpenggunaState extends State<profilpengguna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('The Author'),),
      body: Center(
        child: Column(
          children: [
            Text('Ini halaman profile')
          ],),)
    );
  }
}