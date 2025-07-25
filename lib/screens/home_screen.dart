import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_japanese_language_app/screens/numbers_screen.dart';
import 'package:learn_japanese_language_app/widgets/custom_container_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdf0d5),
      appBar: AppBar(
        backgroundColor: Color(0xff483226),
        title: Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          CustomContainerHomeScreen(
            color: Color(0xfff38f29),
            text: "Numbers",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersScreen();
                  },
                ),
              );
            },
          ),
          CustomContainerHomeScreen(
            color: Color(0xff4c7b2a),
            text: "Family Members",
            onTap: () {},
          ),
          CustomContainerHomeScreen(
            color: Color(0xff7a3c9f),
            text: "Colors",
            onTap: () {},
          ),
          CustomContainerHomeScreen(
            color: Color(0xff419ec2),
            text: "Phrases",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
