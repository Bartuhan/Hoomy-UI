import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ImageCardAndRedFlag extends StatelessWidget {
  const ImageCardAndRedFlag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: myHeight(context) * 0.18,
          width: (myWidth(context) * 1) - 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kHeadLineColor,
              image: const DecorationImage(
                  image: NetworkImage(backGroundUrl), fit: BoxFit.cover)),
          child: const BigImageRedFlag(text: "500 TL"),
        ),
      ),
    );
  }
}

class BigImageRedFlag extends StatelessWidget {
  const BigImageRedFlag({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: myHeight(context) * 0.025,
          right: 0,
          child: Container(
            height: myHeight(context) * 0.04,
            width: myWidth(context) * 0.25,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
