import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Location_Map extends StatelessWidget {
  const Location_Map({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.18,
      width: myWidth(context) * 0.85,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
            image: NetworkImage(backGroundUrl), fit: BoxFit.cover),
      ),
    );
  }
}
