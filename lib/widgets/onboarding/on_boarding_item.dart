import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';


class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.images,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String images;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          images,
          height: 250,
        ),
        const Spacer(),
        Text(title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: MyThemes.darkBluishColor,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: const TextStyle(decoration: TextDecoration.none),
        ),
        const Spacer()
      ],
    );
  }
}