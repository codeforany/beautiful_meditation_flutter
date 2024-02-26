import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation/common/color_extension.dart';
import 'package:meditation/screen/home/reminders_screen.dart';

class ChooseTopicScreen extends StatefulWidget {
  const ChooseTopicScreen({super.key});

  @override
  State<ChooseTopicScreen> createState() => _ChooseTopicScreenState();
}

class _ChooseTopicScreenState extends State<ChooseTopicScreen> {
  List dataArr = [
    {
      "image": "assets/img/c1.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c2.png",
      "title": "Improve Performanee",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c3.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c4.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c5.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c6.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c1.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c2.png",
      "title": "Improve Performanee",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c3.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c4.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c5.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c6.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "What Brings you",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "to Silent Moon?",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "choose a topic to focuse on:",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              child: MasonryGridView.count(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            itemCount: dataArr.length,
            itemBuilder: (context, index) {
              var height = index % 4 == 0 || index % 4 == 2
                  ? context.width * 0.55
                  : context.width * 0.45;
              var cObj = dataArr[index] as Map? ?? {};

              return InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  context.push(const RemindersScreen());
                },
                child: Container(
                  height: height,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: HexColor.formHex(cObj["color"]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          cObj["image"],
                          width: double.maxFinite,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    cObj["title"],
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: HexColor.formHex(
                                            cObj["text_color"]),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
