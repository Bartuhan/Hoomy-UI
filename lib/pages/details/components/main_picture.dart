import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'mini_picture.dart';

class MainPictures extends StatelessWidget {
  const MainPictures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 34),
        Container(
          height: myHeight(context) * 0.4,
          width: myWidth(context) * 0.63,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: NetworkImage(backGroundUrl), fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: myWidth(context) * 0.05),
        Column(
          children: const [
            MiniPic(),
            MiniPic(),
            MiniPic(),
            MiniPic(),
          ],
        ),
      ],
    );
  }
}
