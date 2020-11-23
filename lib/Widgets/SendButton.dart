import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';


class SendButton extends StatelessWidget {
  final Function ontap;

  SendButton({@required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: kwhiteColor,
          borderRadius: BorderRadius.circular(50),),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(
            Icons.send,size: 32,color: kdeepgreenColor,),
        ),
      ),
    );
  }
}