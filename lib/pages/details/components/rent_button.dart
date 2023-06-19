import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RentButton extends StatelessWidget {
  const RentButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: myHeight(context) * 0.08,
        width: myWidth(context) * 0.88,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: const Center(
            child: Text(
          "Rent Now",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: kPrimaryColor,
          ),
        )),
      ),
    );
  }
}
