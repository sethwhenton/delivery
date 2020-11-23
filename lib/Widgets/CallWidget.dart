import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';

class CallWidget extends StatelessWidget {
  final Function ontap;

  CallWidget({@required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 20,
        width: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.call,color: kdeepgreenColor,size: 30,),
            Text('Call',
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