import 'package:flutter/material.dart';

import '../../../components/text_field.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'name_and_picture.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.35,
      width: myWidth(context) * 1,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadiusDirectional.vertical(
          bottom: Radius.circular(55),
        ),
      ),
      child: Column(
        children: [
          const NameAndPicture(name: "Bartuhan", url: imgUrl),
          SizedBox(height: myHeight(context) * 0.04),
          const MyTextField(hintText: "Bir Şeyler Aramayı Dene ..."),
        ],
      ),
    );
  }
}
