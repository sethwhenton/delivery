import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';
import 'package:delivery/Widgets/TextBox.dart';
import 'package:delivery/Widgets/SendButton.dart';


class Message2 extends StatefulWidget {
  @override
  _Message2State createState() => _Message2State();
}

class _Message2State extends State<Message2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:[
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .2,
              decoration: BoxDecoration(
                color: kwhiteColor,
              ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ///ARROW DOWN
                    Container(
                      margin: EdgeInsets.only(top: 10,left: 20),
                      child: Icon(Icons.keyboard_arrow_down,size: 30,color: kblackColor,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 25,right: 25),


                        ///MAIN ROW FOR HEADING
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            ///PICTURE
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              height: 74,
                              width: 74,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/avatar.png'),
                                    fit: BoxFit.fitHeight,
                                  )
                              ),
                            ),

                            ///Name Area
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kofi Hayford',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text('Delivery Partner Assigned',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: klightgreenColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            ///CALL ICON
                            Icon(Icons.call,size: 33,color: kdeepgreenColor,)

                          ],
                        ),
                      ),
                    ),
                  ],
                )
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
      ),
    );
  }
}
