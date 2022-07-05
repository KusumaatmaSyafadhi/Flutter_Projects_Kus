import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:proyekakhir/profile.dart';

import 'direction_page.dart';


class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
    
  }

  final List<Widget> _pages = [
    halaman_arah(),
    
    profilpengguna()

  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      

      // ignore: prefer_const_constructors
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        onTabChange: _navigateBottomBar,
        tabs: const [

          GButton(
            icon: Icons.home,
            
            
            ),
          
          GButton(icon: Icons.person)
          
        ]),  

        

      body: _pages[_selectedIndex],
    );
  }
}