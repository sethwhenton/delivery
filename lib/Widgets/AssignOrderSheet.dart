import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:delivery/Widgets/ReuseableButton.dart';

class AssignOrderSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.72,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              ///FIRST ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///IMAGE
                  Image(image: AssetImage('images/avatar.png'),
                    height: 80,),

                  ///NAME SIDE
                  Container(
                    margin: EdgeInsets.only(right: 37),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kofi Hayford',
                          style: TextStyle(
                              color: kblackColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              fontSize: 22,
                          ),
                        ),
                        Text(
                          'Rider',
                          style: TextStyle(
                              color: klightgreenColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              fontSize: 13
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: SmoothStarRating(
                        isReadOnly: false,
                        allowHalfRating: false,
                        onRated: (v) {
                          ///ENTER FUNCTION HERE
                        },
                        starCount: 5,
                        rating: 5,
                        size: 15.0,
                        color: kyellowColor,
                        borderColor: kyellowColor,
                        spacing:0.0
                    ),
                  ),


                ],
              ),


              ///DELIVERY PACKAGES ROW
              Container(
                margin: EdgeInsets.only(top: 25,left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Packages',
                      style: TextStyle(
                        color: kblackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),

                    Text(
                      '234*',
                      style: TextStyle(
                        color: kdeepgreenColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],

                ),
              ),

              ///ROW ONE
              Container(
                margin: EdgeInsets.only(top: 19, right: 18,left: 30),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///ICON
                          Image(image: AssetImage('images/GreyEatables.png'),
                            height: 60,
                          ),

                          ///DATE AND TIME AND DESTINATION
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Mon,July 27, 2:30PM',
                                  style: TextStyle(
                                    color: kblackColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'From JumiaFood Accra',
                                  style: TextStyle(
                                      color: klightgreenColor,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'To Legon Campus',
                                  style: TextStyle(
                                    color: klightgreenColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          ///PRICE
                          Text('\$40',
                            style: TextStyle(
                              fontSize: 18,
                              color: kblackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

              ),





              ///ROW 2
              Container(
                margin: EdgeInsets.only(top: 19, right: 18,left: 30),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///ICON
                          Image(image: AssetImage('images/greyParcel.png'),
                            height: 60,
                          ),

                          ///DATE AND TIME AND DESTINATION
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Thu,July 31, 5:00PM',
                                  style: TextStyle(
                                    color: kblackColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'From Achimota',
                                  style: TextStyle(
                                    color: klightgreenColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'To Airport City',
                                  style: TextStyle(
                                    color: klightgreenColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          ///PRICE
                          Text('\$54',
                            style: TextStyle(
                              fontSize: 18,
                              color: kblackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              ///MORE INFORMATION
              GestureDetector(
                onTap: (){
                  ///ENTER FUNCTION HERE
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10,left: 200),
                  child: Text(
                    'More Information',
                    style: TextStyle(
                      color: klightgreenColor,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 20),
                child: ReuseableButton(
                  onpress: (){

                  },
                  colour: kdeepgreenColor,
                  buttonText: 'Accept Order',
                  height: 50,
                  width: MediaQuery.of(context).size.height * .9,
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
