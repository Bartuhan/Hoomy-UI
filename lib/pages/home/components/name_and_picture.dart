import 'package:flutter/material.dart';

import '../../../constants.dart';

class NameAndPicture extends StatelessWidget {
  const NameAndPicture({
    super.key,
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, $name",
            style: const TextStyle(
                color: kHeadLineColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            "W e l c o m e",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 50,
        width: 50,
        child: CircleAvatar(
          backgroundImage: NetworkImage(url),
        ),
      )
    ]);
  }
}
