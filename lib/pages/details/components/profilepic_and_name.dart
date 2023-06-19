import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfilePicAndName extends StatelessWidget {
  const ProfilePicAndName({
    super.key,
    required this.name,
    required this.title,
    required this.imgUrl,
  });

  final String name;
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
        ),
        SizedBox(width: myWidth(context) * 0.05),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: myWidth(context) * 0.03),
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(width: myWidth(context) * 0.1),
        const CircleAvatar(
          backgroundColor: Colors.white,
          child: Center(
            child: Icon(
              Icons.phone,
              color: kPrimaryColor,
            ),
          ),
        ),
        SizedBox(width: myWidth(context) * 0.05),
        const CircleAvatar(
          backgroundColor: Colors.white,
          child: Center(
            child: Icon(
              Icons.message,
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
