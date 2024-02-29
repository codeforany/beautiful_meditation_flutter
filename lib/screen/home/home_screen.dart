import 'package:flutter/material.dart';
import 'package:meditation/common/color_extension.dart';
import 'package:meditation/screen/home/course_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List rArr = [
    {
      "image": "assets/img/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/logo_black.png",
                    width: context.width * 0.5,
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning, Afsar",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "We Wish you have a good day",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            context.push(const CourseDetailScreen());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff8E97FD),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        "assets/img/h1.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Basics",
                                          style: TextStyle(
                                            color: TColor.tertiary,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "COURSE",
                                          style: TextStyle(
                                            color: TColor.tertiary,
                                            fontSize: 11,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "3-10 MIN",
                                              style: TextStyle(
                                                color: TColor.tertiary,
                                                fontSize: 11,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: TColor.tertiary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8,
                                                        horizontal: 15),
                                                child: Text(
                                                  "START",
                                                  style: TextStyle(
                                                    color: TColor.primaryText,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            context.push(const CourseDetailScreen());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFFC97E),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        "assets/img/h2.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Relaxation",
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "MUSIC",
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 11,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "3-10 MIN",
                                              style: TextStyle(
                                                color: TColor.primaryText,
                                                fontSize: 11,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: TColor.primaryText,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8,
                                                        horizontal: 15),
                                                child: Text(
                                                  "START",
                                                  style: TextStyle(
                                                    color: TColor.tertiary,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color(0xff333242),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/img/d1.png",
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daily Thought",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "MEDITATION . 3-10 MIN",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/img/play.png",
                                    width: 40,
                                    height: 40,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Recommended for you",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.width * 0.35 * 0.7 + 45 + 40,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var rObj = rArr[index];
                      return SizedBox(
                        width: context.width * 0.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              rObj["image"],
                              width: context.width * 0.35,
                              height: context.width * 0.35 * 0.7,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              rObj["title"],
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              rObj["subtitle"],
                              style: TextStyle(
                                  color: TColor.primaryText, fontSize: 11),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                    itemCount: rArr.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
