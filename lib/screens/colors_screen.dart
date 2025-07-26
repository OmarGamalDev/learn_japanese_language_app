import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/models/app_model.dart';
import 'package:learn_japanese_language_app/widgets/custom_app_bar.dart';
import 'package:learn_japanese_language_app/widgets/custom_widget_for_numbers_screen.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});
  final List<AppModel> colors = [
    AppModel(
      imagePath: "assets/images/colors/color_black.png",
      japaneseText: "kuro",
      englishText: "Black",
      audioPath: "sounds/colors/black.wav",
    ),
    AppModel(
      imagePath: "assets/images/colors/color_brown.png",
      japaneseText: "chairo",
      englishText: "Brown",
      audioPath: "sounds/colors/brown.wav",
    ),
    AppModel(
      imagePath: "assets/images/colors/color_green.png",
      japaneseText: "midori",
      englishText: "Green",
      audioPath: "sounds/colors/green.wav",
    ),
    AppModel(
      imagePath: "assets/images/colors/color_dusty_yellow.png",
      japaneseText: "haki",
      englishText: "Dusty Yellow",
      audioPath: "sounds/colors/dusty_yellow.wav",
    ),
    AppModel(
      imagePath: "assets/images/colors/color_gray.png",
      japaneseText: "haiiro",
      englishText: "Gray",
      audioPath: "sounds/colors/gray.wav",
    ),
    AppModel(
      imagePath: "assets/images/colors/color_red.png",
      japaneseText: "akā",
      englishText: "Red",
      audioPath: "sounds/colors/red.wav",
    ),
    AppModel(
      imagePath: "assets/images/colors/color_white.png",
      japaneseText: "shiro",
      englishText: "White",
      audioPath: "sounds/colors/white.wav",
    ),
    AppModel(
      imagePath: "assets/images/colors/yellow.png",
      japaneseText: "kiiro",
      englishText: "Yellow",
      audioPath: "sounds/colors/yellow.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: CustomAppBar(text: "Family Members"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CustomCatgoryWidgetForAllScreen(
            languageObject: colors[index],
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(colors[index].audioPath));
            },
          );
        },
        itemCount: colors.length,
      ),
    );
  }
}
