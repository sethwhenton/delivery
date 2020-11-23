import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';


class TextBox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: kwhiteColor,
      ),
      width: MediaQuery.of(context).size.width*.7,
      height: 40,
      child: TextField(
        decoration: kTextFieldDecoration,
      ),
    );
  }
}