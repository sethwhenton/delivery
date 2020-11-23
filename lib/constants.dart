import 'package:flutter/material.dart';


const kdeepgreenColor=Color(0xFF093737);
const klightgreenColor=Color(0xFF449F8D);
const kblackColor=Colors.black;
const kwhiteColor=Colors.white;
const kgreyColor=Color(0xFFC3C3C3);
const kapiKey="AIzaSyDtXzsvHgrA78n3Xs132tSN9nx6fGjxo3A";
const kyellowColor=Colors.yellow;
const kextragreyColor=Color(0xFFf7f4f4);


const kinactiveColor=Color(0xFF093737);
const kactiveColor=Colors.white;





const kTextFieldDecoration= InputDecoration(

    hintText: 'Type a Message..',
    hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
    contentPadding:
    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    enabledBorder:OutlineInputBorder(
  borderSide: BorderSide(color: kgreyColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),

),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kextragreyColor, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),

    ),
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
//   enabledBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
//   focusedBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
);