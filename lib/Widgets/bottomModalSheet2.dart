import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';
import 'package:delivery/Widgets/ReuseableButton.dart';
import 'MessageWidget.dart';
import 'CallWidget.dart';


class BottomModalSheet2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.33,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              ///FIRST ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///IMAGE
                  Image(image: AssetImage('images/avatar.png'),
                    height: 100,),

                  ///NAME SIDE
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alfred Mohenu',
                          style: TextStyle(
                            color: kblackColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 22,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_rounded,size: 30,color: kdeepgreenColor,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Achimota Mile 7',
                                  style: TextStyle(
                                      color: klightgreenColor,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                      fontSize: 13
                                  ),
                                ),
                                Text(
                                  '0 mins',
                                  style: TextStyle(
                                      color: klightgreenColor,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                      fontSize: 13
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
              
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ReuseableButton(
                  onpress: (){

                },
                    colour: kdeepgreenColor,
                    buttonText: 'Arrive',
                    height: 50,
                  width: MediaQuery.of(context).size.width*.9,
                ),
              ),



              ///CALL AND MESSAGE ROW
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width*.9,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),



                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ///CALL ICON
                      CallWidget(
                        ontap: (){

                        },
                      ),


                      ///MESSAGE ICON
                      MessageWidget(
                        ontap: (){

                        },
                      ),




                    ],

                  ),
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}







