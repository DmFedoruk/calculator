import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LargeButton extends StatefulWidget {
  const LargeButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.text,
      required this.function});
  final Color color;
  final Color textColor;
  final String text;
  final Function function;

  @override
  State<LargeButton> createState() => _LargeButtonState();
}

class _LargeButtonState extends State<LargeButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.function();
      },
      child: Container(
        width: 180.w,
        height: 87.w,
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(47)),
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: TextStyle(
              color: widget.textColor,
              fontSize: 40.sp,
              height: 1.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Inter"),
        ),
      ),
    );
  }
}
