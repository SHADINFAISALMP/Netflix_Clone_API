import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';

class BottomIcons extends StatelessWidget {
  const BottomIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
        Icon(
          Icons.thumb_up_sharp,
          size: 22,
          color: whitecolor,
        ),
        Icon(
          Icons.share,
          color: whitecolor,
        ),
      ],
    );
  }
}
