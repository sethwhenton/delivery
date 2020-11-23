import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';



class ReuseableButton extends StatelessWidget {
  final Color colour;
  final String buttonText;
  final Function onpress;
  final double height;
  final double width;


  ReuseableButton({@required this.onpress,@required this.colour,@required this.buttonText,@required this.height,@required this.width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: kwhiteColor,
                fontSize: 20
            ),
          ),
        ),
      ),
    );
    // return Padding(
    //   padding: EdgeInsets.symmetric(vertical: 16.0),
    //   child: Material(
    //     color: colour,
    //     borderRadius: BorderRadius.circular(10.0),
    //     elevation: 5.0,
    //     child: InkWell(
    //       borderRadius: BorderRadius.circular(10.0),
    //       child: MaterialButton(
    //         onPressed: onpress,
    //
    //         minWidth: width,
    //         height: height,
    //         child: Text(
    //           buttonText,
    //           style: TextStyle(
    //             fontSize: 23,
    //             color: Colors.white,
    //             fontFamily: 'Roboto',
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
