import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';
import 'package:delivery/Widgets/item.dart';

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///GREEN BACKGROUND
          Container(
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
              color: kdeepgreenColor,
            ),
            child: Stack(
              children: [

                ///IMAGE
                Container(
                  margin: EdgeInsets.only(left: 20,top: 20),
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/appLogoHeader.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),



                ///PACKAGES AND SEACRH BUTTON
                Container(
                  margin: EdgeInsets.only(top: 80,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Packages',
                        style: TextStyle(
                          color: kwhiteColor,
                          fontSize: 25,
                        ),
                      ),

                      Icon(Icons.search_outlined,
                        color: kwhiteColor,
                        size: 30,),
                    ],
                  ),
                ),



              ],
            ),
          ),
          Container(

            child: Column(
              children: [


                ///DELIVERED PACKAGES TEXT
                Container(
                  margin: EdgeInsets.only(top: 20,right: 120,),
                  child: Text('Delivered Packages',
                    style: TextStyle(
                      fontSize: 24,
                      color: kblackColor,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),


                ///LIST AREA
                Container(
                  height: 480,
                  width: MediaQuery.of(context).size.width*.94,
                  child: ListView(
                    children: [
                      ///FIRST ITEM
                      Item(
                        heading: 'Food and Eatables',
                        from: 'From Jumia Food Accra',
                        to: 'To Legon Campus',
                        imageicon: 'images/GreyEatables.png',
                      ),

                      ///SECOND ITEM
                      Item(
                        heading: 'Books and Stationery',
                        from: 'From Jumia Food Accra',
                        to: 'To Legon Campus',
                        imageicon: 'images/greyBooks.png',
                      ),

                      Item(
                        heading: 'Food and Eatables',
                        from: 'From Jumia Food Accra',
                        to: 'To Legon Campus',
                        imageicon: 'images/GreyEatables.png',
                      ),

                      Item(
                        heading: 'Books and Stationery',
                        from: 'From Jumia Food Accra',
                        to: 'To Legon Campus',
                        imageicon: 'images/greyBooks.png',
                      ),

                    ],
                  ),
                ),



              ],
            ),
          )
        ],
      ),
    );
  }
}
