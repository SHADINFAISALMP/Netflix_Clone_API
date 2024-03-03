import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';

class TopContainers extends StatelessWidget {
  const TopContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: mediaqueryheight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🍿 Coming Soon ",
              style: TextStyle(
                color: whitecolor,
              ),
            ),
          ),
        ),
        Container(
          height: mediaqueryheight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🔥 Everyone's watching ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
        Container(
          height: mediaqueryheight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🎮 Games ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
        Container(
          height: mediaqueryheight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🔝 Top Tv Shows ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
        Container(
          height: mediaqueryheight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🔝 Top Movies ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
      ],
    );
  }
}
