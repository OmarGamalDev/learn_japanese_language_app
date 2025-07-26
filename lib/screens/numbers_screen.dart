import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/models/app_model.dart';
import 'package:learn_japanese_language_app/widgets/custom_app_bar.dart';
import 'package:learn_japanese_language_app/widgets/custom_widget_for_numbers_screen.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  final List<AppModel> numbers = [
    AppModel(
      imagePath: "assets/images/numbers/number_one.png",
      japaneseText: "ichi",
      englishText: "one",
      audioPath: "sounds/numbers/number_one_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_two.png",
      japaneseText: "ni",
      englishText: "two",
      audioPath: "sounds/numbers/number_two_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_three.png",
      japaneseText: "san",
      englishText: "three",
      audioPath: "sounds/numbers/number_three_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_four.png",
      japaneseText: "shi",
      englishText: "four",
      audioPath: "sounds/numbers/number_four_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_five.png",
      japaneseText: "go",
      englishText: "five",
      audioPath: "sounds/numbers/number_five_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_six.png",
      japaneseText: "roku",
      englishText: "six",
      audioPath: "sounds/numbers/number_six_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_seven.png",
      japaneseText: "nana",
      englishText: "seven",
      audioPath: "sounds/numbers/number_seven_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_eight.png",
      japaneseText: "hachi",
      englishText: "eight",
      audioPath: "sounds/numbers/number_eight_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_nine.png",
      japaneseText: "kyuu",
      englishText: "nine",
      audioPath: "sounds/numbers/number_nine_sound.mp3",
    ),
    AppModel(
      imagePath: "assets/images/numbers/number_ten.png",
      japaneseText: "juu",
      englishText: "ten",
      audioPath: "sounds/numbers/number_ten_sound.mp3",
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
          return CustomCatgoryWidgetForAllScreen(
            languageObject: numbers[index],
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(numbers[index].audioPath));
            },
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
