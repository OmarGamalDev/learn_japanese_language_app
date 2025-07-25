import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/constants/app_styles.dart';
import 'package:learn_japanese_language_app/models/numbers_model.dart';

class CustomWidgetForNumbersScreen extends StatelessWidget {
  const CustomWidgetForNumbersScreen({super.key, required this.numbers});
  final Numbers numbers;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff38e26),
      height: 120.h,
      child: Row(
        children: [
          Container(
            color: Color(0xfffdf0d7),
            child: Image.asset(numbers.imagePath),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(numbers.japaneseText, style: AppStyles.title),
                Text(numbers.englishText, style: AppStyles.title),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 35),
            ),
          ),
        ],
      ),
    );
  }
}
