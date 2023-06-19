import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'redflag_text_and_like.dart';

class RecommendedCards extends StatelessWidget {
  const RecommendedCards({
    super.key,
    this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: myHeight(context) * 0.22,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            height: myHeight(context) * 0.20,
            width: myWidth(context) * 0.425,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kHeadLineColor,
                image: const DecorationImage(
                    image: NetworkImage(backGroundUrl), fit: BoxFit.cover)),
            child: RedFlagTextAndLike(
                flagText: "Text $index",
                cardName: "Ayama Homestay $index",
                locationName: "Canggu / $index"),
          ),
        ),
      ),
    );
  }
}
