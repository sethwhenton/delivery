import 'package:flutter/material.dart';
import 'package:delivery/constants.dart';

class HorizontalLine extends StatelessWidget {

  final Color color;

  HorizontalLine({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 3,
      width: 50,
      color: color,
    );
  }
}
