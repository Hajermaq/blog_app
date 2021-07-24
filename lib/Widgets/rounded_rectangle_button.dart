import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedRectangleButton extends StatelessWidget {
  RoundedRectangleButton({this.widget, this.color});
  final Widget widget;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 390,
      child: RaisedButton(
        elevation: 0,
        color: color,
        child: widget,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
