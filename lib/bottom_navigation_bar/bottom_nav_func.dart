import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/search/search.dart';

buildtitlewidget(int currentindex) {
  switch (currentindex) {
    case 0:
      return;
    case 1:
      return mytext("News & Hot", 18, FontWeight.bold);
    case 2:
      return mytext("My Netflix", 18, FontWeight.bold);
    default:
      return const SizedBox();
  }
}

buildleading(int currentindex) {
  switch (currentindex) {
    case 0:
      return Transform.scale(
        scale: 0.7,
        child: Image.asset("assets/images/netflix_logo0.png"),
      );
    case 1:
      break;
    case 2:
      break;
  }
}

buildTrailingWidget(int currentindex, context) {
  switch (currentindex) {
    case 2:
      return [
        Icon(
          Icons.cast,
          size: 20,
          color: whitecolor,
        ),
        SizedBox(
          width: mediaqueryheight(0.02, context),
        ),
        const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        SizedBox(
          width: mediaqueryheight(0.02, context),
        ),
      ];

    default:
      return [
        Icon(
          Icons.cast,
          size: 20,
          color: whitecolor,
        ),
        SizedBox(
          width: mediaqueryheight(0.02, context),
        ),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const searchscreen()));
            },
            child: Icon(Icons.search, color: whitecolor)),
        SizedBox(
          width: mediaqueryheight(0.02, context),
        ),
      ];
  }
}
