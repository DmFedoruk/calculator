import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/colors/my_colors.dart';
import 'package:flutter_calculator_app/widgets/circle_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculateScreen extends StatelessWidget {
  CalculateScreen({super.key});

  final MyColors colors = MyColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: colors.backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w),
                child: Row(children: [
                  CircleButton(
                      color: colors.additionalOperationColor,
                      textColor: colors.additionalOperationTextColor,
                      text: "AC"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.additionalOperationColor,
                      textColor: colors.additionalOperationTextColor,
                      text: "+/-"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.additionalOperationColor,
                      textColor: colors.additionalOperationTextColor,
                      text: "%"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      text: "/"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w, top: 16.h),
                child: Row(children: [
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "7"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "8"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "9"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      text: "*"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w, top: 16.h),
                child: Row(children: [
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "4"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "5"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "6"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      text: "-"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 20.w, top: 16.h),
                child: Row(children: [
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "1"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "2"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.buttonColor,
                      textColor: colors.white,
                      text: "3"),
                  SizedBox(width: 17.w),
                  CircleButton(
                      color: colors.operationColor,
                      textColor: colors.operationTextColor,
                      text: "+"),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 16.h, left: 10.w, bottom: 23.h, right: 20.w),
                child: Row(
                  children: [
                    CircleButton(
                        color: colors.buttonColor,
                        textColor: colors.white,
                        text: "0"),
                    SizedBox(width: 17.w),
                    CircleButton(
                        color: colors.buttonColor,
                        textColor: colors.white,
                        text: "."),
                    SizedBox(width: 17.w),
                    CircleButton(
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
}
