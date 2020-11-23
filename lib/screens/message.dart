import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:delivery/Widgets/SendButton.dart';
import 'package:delivery/Widgets/TextBox.dart';


class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          ///Heading AREA
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
              color: kdeepgreenColor,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    child: Text(
                      'Messages',
                      style: TextStyle(
                        color: kwhiteColor,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),

                ///BACKGROUND IMAGE
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

              ],
            ),
          ),

          ///Text Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      'Nothing here',
                      style: TextStyle(
                        fontSize: 30,
                        color: kgreyColor
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),




          ///TextBox Area

          Container(
            height: MediaQuery.of(context).size.height*.08,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: kwhiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextBox(),

                  SendButton(
                    ontap: (){

                    },
                  ),

                ],
              ),
            ),
          ),






        ],
      ),
    );
  }
}
































