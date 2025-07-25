import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/models/numbers_model.dart';
import 'package:learn_japanese_language_app/widgets/custom_app_bar.dart';
import 'package:learn_japanese_language_app/widgets/custom_widget_for_numbers_screen.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  final List<Numbers> numbers = [
    Numbers(
      imagePath: "assets/images/numbers/number_one.png",
      japaneseText: "ichi",
      englishText: "one",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_two.png",
      japaneseText: "ni",
      englishText: "two",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_three.png",
      japaneseText: "san",
      englishText: "three",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_four.png",
      japaneseText: "shi",
      englishText: "four",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_five.png",
      japaneseText: "go",
      englishText: "five",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_six.png",
      japaneseText: "roku",
      englishText: "six",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_seven.png",
      japaneseText: "nana",
      englishText: "seven",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_eight.png",
      japaneseText: "hachi",
      englishText: "eight",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_nine.png",
      japaneseText: "kyuu",
      englishText: "nine",
    ),
    Numbers(
      imagePath: "assets/images/numbers/number_ten.png",
      japaneseText: "juu",
      englishText: "ten",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: CustomAppBar(text: "Numbers"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CustomWidgetForNumbersScreen(numbers: numbers[index]);
        },
        itemCount: numbers.length,
      ),
    );
  }
}
