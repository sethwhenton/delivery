import 'package:delivery/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery/screens/packages.dart';
import 'package:delivery/screens/homescreen.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int _currentIndex=0;
  Widget callPage(int currentIndex){
    switch (currentIndex){
      case 0:
        return HomeScreen();
      case 1:
        return Packages();

    }
  }
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kdeepgreenColor,
        unselectedItemColor: kgreyColor,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home_filled,size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.all_inbox,size: 30,),
            label: 'Packages',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings,size: 30,),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex=index;

          });
        },

      ),



      body: callPage(_currentIndex),





    );
  }
}





