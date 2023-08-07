// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';

import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/onboard_item.dart';
import '../widgets/onboarding/dot_indicator.dart';
import '../widgets/onboarding/on_boarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;
  int _pageIndicator = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            // safe area means the status bar or notification bar
            child: Padding(
          padding: const EdgeInsets.all(16.0),//padding in both side
          child: Column(
            children: [
              Expanded(
                //A widget that expands a child of a Row, Column, or Flex so that the child fills the available space
                child: PageView.builder(
                  //view pager
                  reverse: false,
                  physics: BouncingScrollPhysics(),
                  dragStartBehavior: DragStartBehavior.start,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndicator = value;
                    });
                  },
                  itemBuilder: (context, index) => OnBoardingContent(
                    images: demo_list[index].image,
                    title: demo_list[index].title,
                    desc: demo_list[index].desc,
                  ),
                  itemCount: demo_list.length,
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    //generate dummy list
                    demo_list.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: DotIndicator(
                        isActive: index == _pageIndicator,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          _pageIndicator == 2
                              ? goToLoginPage(context)
                              : _pageController.nextPage(
                                  duration: const Duration(microseconds: 300),
                                  curve: Curves.linear);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: context.theme.buttonColor),
                        child: const Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
        )));
  }

  goToLoginPage(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 300));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) {
        return const LoginPage();
      },
    ));
  }
}


final List<OnBoard> demo_list = [
  OnBoard(
    image: "assets/images/login_image.png",
    title: "Find the item you've been looking for",
    desc:
        "Here you will see rich varieties of goods,carrefully,classifed for seamless browsing experience. ",
  ),
  OnBoard(
    image: "assets/images/login_image2.png",
    title: "Find the item you've been looking for",
    desc:
        "Here you will see rich varieties of goods,carrefully,classifed for seamless browsing experience. ",
  ),
  OnBoard(
    image: "assets/images/login_image.png",
    title: "Find the item you've been looking for",
    desc:
        "Here you will see rich varieties of goods,carrefully,classifed for seamless browsing experience. ",
  )
];


