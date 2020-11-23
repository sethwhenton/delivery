import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';
import 'package:delivery/Widgets/ReuseableButton.dart';

class AcceptOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:  MediaQuery.of(context).size.height * .29,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  children: [

                    ///AVATAR IMAGE
                    Image(image: AssetImage('images/avatar.png'),
                      height: 90,),

                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///NAME

                          Text('Alfred Mohenu',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: kdeepgreenColor,
                            ),
                          ),
                          ///LOCATION
                          Row(
                            children: [
                            Icon(Icons.location_on_rounded,size: 30,color: kdeepgreenColor,),



                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Achimota Mile 7',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: klightgreenColor,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  ///TIME
                                  Text('5 mins',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: klightgreenColor,
                                      fontFamily: 'Roboto',
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
                ///BUTTON
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ReuseableButton(
                    onpress: (){

                    },
                    colour: kdeepgreenColor,
                    buttonText: 'Accept Order',
                    height: 50,
                    width: MediaQuery.of(context).size.height * .9,
                  ),
                ),

                ///CANCEL BUTTON


                SizedBox(
                  height: 10,
                ),

                Text('Cancel',
                  style: TextStyle(
                    color: kgreyColor,
                    fontSize: 18,
                    fontFamily: 'ROBOTO',
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
