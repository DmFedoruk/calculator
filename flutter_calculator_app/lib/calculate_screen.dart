import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/colors/my_colors.dart';
import 'package:flutter_calculator_app/widgets/circle_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/large_button.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  final MyColors colors = MyColors();
  double number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: colors.backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 72.h,
                width: MediaQuery.of(context).size.width.w,
                margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 57.h),
                alignment: Alignment.centerRight,
                child: Text(
                  "$number",
                  style: TextStyle(
                      fontSize: 55.sp,
                      color: colors.white,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w),
                child: Row(children: [
                  CircleButton(
                      function: () => deleteAll(),
                      color: colors.additionalOperationColor,
                      textColor: colors.additionalOperationTextColor,
                      text: "AC"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () => changeSign(),
                      color: colors.additionalOperationColor,
                      textColor: colors.additionalOperationTextColor,
                      text: "+/-"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () {},
                      color: colors.additionalOperationColor,
                      textColor: colors.additionalOperationTextColor,
                      text: "%"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () {},
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      fontSize: 45,
                      height: 1,
                      text: "÷"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w, top: 16.h),
                child: Row(children: [
                  CircleButton(
                      function: () => addNumber(7),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "7"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () => addNumber(8),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "8"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () => addNumber(9),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "9"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () {},
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      fontSize: 35,
                      height: 1,
                      text: "×"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w, top: 16.h),
                child: Row(children: [
                  CircleButton(
                      function: () => addNumber(4),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "4"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () => addNumber(5),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "5"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () => addNumber(6),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "6"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () {},
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      fontSize: 55,
                      height: 1,
                      text: "-"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w, top: 16.h),
                child: Row(children: [
                  CircleButton(
                      function: () => addNumber(1),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "1"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () => addNumber(2),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "2"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () => addNumber(3),
                      color: colors.buttonColor,
                      textColor: colors.white,
                      fontSize: 30,
                      text: "3"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      function: () {},
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      fontSize: 40,
                      height: 1,
                      text: "+"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 16.h, left: 10.w, bottom: 23.h, right: 20.w),
                child: Row(
                  children: [
                    CircleButton(
                        function: () {},
                        color: colors.buttonColor,
                        textColor: colors.white,
                        fontSize: 30,
                        text: "0"),
                    SizedBox(width: 16.w),
                    CircleButton(
                        function: () {},
                        color: colors.buttonColor,
                        textColor: colors.white,
                        fontSize: 30,
                        text: "."),
                    SizedBox(width: 11.w),
                    LargeButton(
                        color: colors.operationColor,
                        textColor: colors.operationTextColor,
                        text: "=")
                  ],
                ),
              )
            ],
          )),
    );
  }

  void deleteAll() {
    number = 0;
    setState(() {});
  }

  void changeSign() {
    if (number != 0) {
      number *= -1;
      setState(() {});
    }
  }

  void addNumber(double value) {
    if (number != 0) {
      double fraction = number - number.truncate();
      if (fraction != 0) {
      } else {
        number = number * 10 + value;
      }
    } else {
      number = value;
    }
    setState(() {});
  }
}
