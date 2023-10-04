import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.text});
  final Color color;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.w,
      height: 78.w,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontSize: 27.sp,
            fontWeight: FontWeight.w500,
            fontFamily: "Inter"),
      ),
    );
  }
}
