import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/screens/home_screen.dart';

void main() {
  runApp(const LearnJabaneseLanguage());
}

class LearnJabaneseLanguage extends StatelessWidget {
  const LearnJabaneseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 917),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
    );
  }
}
