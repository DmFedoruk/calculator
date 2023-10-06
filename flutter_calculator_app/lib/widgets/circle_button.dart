import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleButton extends StatefulWidget {
  const CircleButton(
      {super.key,
      required this.function,
      required this.color,
      required this.textColor,
      required this.text,
      this.fontSize = 27,
      this.height = 1.2});
  final Color color;
  final Color textColor;
  final String text;
  final double fontSize;
  final double height;
  final Function function;

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.function();
      },
      child: Container(
        width: 78.w,
        height: 78.w,
        decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: widget.textColor,
              fontSize: widget.fontSize.sp,
              height: widget.height,
              fontWeight: FontWeight.w500,
              fontFamily: "Inter"),
        ),
      ),
    );
  }
}
