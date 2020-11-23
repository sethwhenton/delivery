import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';
import 'horizontal_line_for_appbar.dart';

enum session{
  rider,vehicle
}

class ApppBar extends StatefulWidget {
  @override
  _ApppBarState createState() => _ApppBarState();
}

class _ApppBarState extends State<ApppBar> {

  session SelectedSession=session.rider;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: klightgreenColor,
          borderRadius: BorderRadius.circular(8)
      ),
      margin: EdgeInsets.only(top: 50,left: 40),
      width: MediaQuery.of(context).size.height * .4,
      height: MediaQuery.of(context).size.height * .1,
      child: Container(
        margin: EdgeInsets.only(top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  SelectedSession=session.rider;
                });
              },
              child: Column(
                children: [
                  Text(
                    'Riders',
                    style: TextStyle(
                      fontSize: 20,
                      color: SelectedSession==session.rider?kactiveColor:kinactiveColor,
                    ),
                  ),


                  HorizontalLine(
                    color: SelectedSession==session.rider?kactiveColor:klightgreenColor,
                  ),


                ],
              )
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  SelectedSession=session.vehicle;
                });
              },
              child: Column(
                children: [
                  Text(
                    'Vehicles',
                    style: TextStyle(
                      fontSize: 20,
                      color: SelectedSession==session.vehicle?kactiveColor:kinactiveColor,
                    ),
                  ),
                  HorizontalLine(
                    color: SelectedSession==session.vehicle?kactiveColor:klightgreenColor,
                  ),

                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}


