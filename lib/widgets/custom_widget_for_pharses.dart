import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/constants/app_styles.dart';
import 'package:learn_japanese_language_app/models/phrases_model.dart';

class CustomWidgetForPharses extends StatelessWidget {
  const CustomWidgetForPharses({
    super.key,
    required this.phrasesObject,
    this.onPressed,
  });
  final PhrasesModel phrasesObject;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff38e26),
      height: 120.h,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(phrasesObject.japaneseText, style: AppStyles.title),
                Text(phrasesObject.englishText, style: AppStyles.title),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              splashColor: Colors.transparent,
              onPressed: onPressed,
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 35),
            ),
          ),
        ],
      ),
    );
  }
}
