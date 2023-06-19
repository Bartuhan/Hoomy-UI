import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RouterDots extends StatelessWidget {
  const RouterDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(flex: 8),
        Dot(fit: 1, onTap: () {}),
        Dot(fit: 1, onTap: () {}),
        Dot(fit: 1, onTap: () {}),
        Dot(fit: 1, onTap: () {}),
        Dot(fit: 1, onTap: () {}),
        const Spacer(flex: 8),
      ],
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    super.key,
    required this.fit,
    required this.onTap,
  });

  final int fit;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: myHeight(context) * 0.012,
          width: myHeight(context) * 0.012,
          decoration:
              const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
