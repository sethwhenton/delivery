import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';

class Item extends StatelessWidget {
  final String heading;
  final String from;
  final String to;
  final String imageicon;

  Item({this.heading,this.from,this.to,this.imageicon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 4),
        height: MediaQuery.of(context).size.height*.2,
        decoration: BoxDecoration(
          color: kwhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 5,
               // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///HEADING AREA
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$heading',
                    style: TextStyle(
                      color: kblackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '$from',
                    style: TextStyle(
                      color: klightgreenColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '$to',
                    style: TextStyle(
                      color: klightgreenColor,
                      fontWeight: FontWeight.bold,

                      fontSize: 12,
                    ),
                  ),
                  ///DElivered side
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: kdeepgreenColor,
                          size: 22,

                        ),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          'Delivered',
                          style: TextStyle(
                            color: kdeepgreenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              ///ICON AREA
              Image(image: AssetImage('$imageicon'),
                height: 70,
              ),


            ],
          ),
        ),

      ),
    );
  }
}


