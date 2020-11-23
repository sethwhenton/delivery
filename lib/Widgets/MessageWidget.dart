import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';

class MessageWidget extends StatelessWidget {
  final Function ontap;

  MessageWidget({@required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 25,
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.message,color: kdeepgreenColor,size: 30,),
            Text('Message',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kdeepgreenColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}