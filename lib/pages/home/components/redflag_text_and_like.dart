import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RedFlagTextAndLike extends StatelessWidget {
  const RedFlagTextAndLike({
    super.key,
    required this.flagText,
    required this.cardName,
    required this.locationName,
  });

  final String flagText;
  final String cardName;
  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: myHeight(context) * 0.025,
          right: 0,
          child: Container(
            height: myHeight(context) * 0.035,
            width: myWidth(context) * 0.23,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Center(
              child: Text(
                flagText,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: myHeight(context) * 0.020,
          left: myHeight(context) * 0.015,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardName,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    locationName,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(width: myWidth(context) * 0.03),
              const Icon(Icons.favorite_border, color: Colors.white, size: 20)
            ],
          ),
        ),
      ],
    );
  }
}
