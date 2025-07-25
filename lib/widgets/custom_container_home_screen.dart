import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerHomeScreen extends StatelessWidget {
  const CustomContainerHomeScreen({super.key, this.color, this.text,required this.onTap});
  final Color? color;
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 10.h),
        height: 80.h,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
      ),
    );
  }
}
