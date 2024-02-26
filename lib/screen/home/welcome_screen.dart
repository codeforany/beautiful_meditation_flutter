import 'package:flutter/material.dart';
import 'package:meditation/common/color_extension.dart';
import 'package:meditation/common_widget/round_button.dart';
import 'package:meditation/screen/home/choose_topic_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8E97FD),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            "assets/img/welcome.png",
            width: context.width,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "assets/img/logo.png",
                    width: context.width * 0.5,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Hi Afsar, Welcome",
                    style: TextStyle(
                      color: TColor.primaryTextW,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "to Silent Moon",
                    style: TextStyle(
                      color: TColor.primaryTextW,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Explore the app, Find some peace of mind to prepare for meditation.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryTextW,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  RoundButton(
                      title: "GET STARTED",
                      type: RoundButtonType.secondary,
                      onPressed: () {
                        context.push(const ChooseTopicScreen());
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
