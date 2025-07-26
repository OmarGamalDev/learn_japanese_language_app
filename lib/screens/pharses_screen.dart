import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/models/phrases_model.dart';
import 'package:learn_japanese_language_app/widgets/custom_app_bar.dart';
import 'package:learn_japanese_language_app/widgets/custom_widget_for_numbers_screen.dart';
import 'package:learn_japanese_language_app/widgets/custom_widget_for_pharses.dart';

class PharsesScreen extends StatelessWidget {
   PharsesScreen({super.key});
    final List<PhrasesModel> phrases = [
    PhrasesModel(
      japaneseText: "Koko wa doko desu ka?",
      englishText: "Are you coming?",
      audioPath: "sounds/phrases/are_you_coming.wav",
    ),
    PhrasesModel(
      japaneseText: "Doko ni ikimasu ka?",
      englishText: "Where are you going?",
      audioPath: "sounds/phrases/where_are_you_going.wav",
    ),
    PhrasesModel(
      japaneseText: "Hai, ikimasu",
      englishText: "Yes, I'm coming",
      audioPath: "sounds/phrases/yes_im_coming.wav",
    ),
    PhrasesModel(
      japaneseText: "Iie, ikimasen",
      englishText: "Don't forget to subscribe",
      audioPath: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    PhrasesModel(
      japaneseText: "Ogenki desu ka?",
      englishText: "How are you feeling?",
      audioPath: "sounds/phrases/how_are_you_feeling.wav",
    ),
    PhrasesModel(
      japaneseText: "大好きです",
      englishText: "I love anime",
      audioPath: "sounds/phrases/i_love_anime.wav",
    ),
    PhrasesModel(
      japaneseText: "プログラミングが大好きです",
      englishText: "I love programming",
      audioPath: "sounds/phrases/i_love_programming.wav",
    ),
    PhrasesModel(
      japaneseText: "プログラミングは簡単です",
      englishText: "Programming is easy",
      audioPath: "sounds/phrases/programming_is_easy.wav",
    ),
    PhrasesModel(
      japaneseText: "あなたの名前は何ですか？",
      englishText: "What is your name?",
      audioPath: 'sounds/phrases/what_is_your_name.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: CustomAppBar(text: "Phrases"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CustomWidgetForPharses(
            phrasesObject: phrases[index],
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(phrases[index].audioPath));
            },
          );
        },
        itemCount: phrases.length,
      ),
    );
  }
}
