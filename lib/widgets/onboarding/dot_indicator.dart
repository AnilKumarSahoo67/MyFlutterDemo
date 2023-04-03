import 'package:flutter/material.dart';

import '../themes.dart';


class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: isActive ? 12 : 4,
      decoration: BoxDecoration(
          color: MyThemes.darkBluishColor,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
