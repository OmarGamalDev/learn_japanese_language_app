import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/models/app_model.dart';
import 'package:learn_japanese_language_app/widgets/custom_app_bar.dart';
import 'package:learn_japanese_language_app/widgets/custom_widget_for_numbers_screen.dart';

class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({super.key});
  final List<AppModel> familyMembers = [
    AppModel(
      imagePath: "assets/images/family_members/family_daughter.png",
      japaneseText: "musume",
      englishText: "Daughter",
      audioPath: "sounds/family_members/daughter.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_father.png",
      japaneseText: "chichi",
      englishText: "Father",
      audioPath: "sounds/family_members/father.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_son.png",
      japaneseText: "musuko",
      englishText: "Son",
      audioPath: "sounds/family_members/son.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_grandfather.png",
      japaneseText: "ojiisan",
      englishText: "Grandfather",
      audioPath: "sounds/family_members/grand_father.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_mother.png",
      japaneseText: "haha",
      englishText: "Mother",
      audioPath: "sounds/family_members/mother.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_younger_brother.png",
      japaneseText: "otōto",
      englishText: "Younger Brother",
      audioPath: "sounds/family_members/younger_brother.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_older_brother.png",
      japaneseText: "ani",
      englishText: "Older Brother",
      audioPath: "sounds/family_members/older_bother.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_younger_sister.png",
      japaneseText: "imōto",
      englishText: "Younger Sister",
      audioPath: "sounds/family_members/younger_sister.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_older_sister.png",
      japaneseText: "ane",
      englishText: "Older Sister",
      audioPath: "sounds/family_members/older_sister.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_grandmother.png",
      japaneseText: "obaasan",
      englishText: "Grandmother",
      audioPath: "sounds/family_members/grand_mother.wav",
    ),
    AppModel(
      imagePath: "assets/images/family_members/family_son.png",
      japaneseText: "kodomo",
      englishText: "Child",
      audioPath: "sounds/family_members/son.wav",
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
            languageObject: familyMembers[index],
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(familyMembers[index].audioPath));
            },
          );
        },
        itemCount: familyMembers.length,
      ),
    );
  
  }
}
