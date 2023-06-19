import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'rating_flag.dart';

class NearByCard extends StatelessWidget {
  const NearByCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.15,
      width: (myWidth(context) * 1) - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: Row(children: [
        Expanded(
          child: ClipRRect(
              borderRadius:
                  const BorderRadius.horizontal(left: Radius.circular(20)),
              child: Image.network(
                backGroundUrl,
                fit: BoxFit.cover,
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: myHeight(context) * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Ayama",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    RatingFlag(),
                  ],
                ),
                const Text(
                  "Homestay",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  "flan filan",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: '\$320',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                          TextSpan(
                              text: '/month',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              )),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.red,
                        ))
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
