import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/search/FUnctionss/search_api.dart';
import 'package:netflix/screenss/value_notifier/valuenotifer.dart';

Padding searchBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      width: double.infinity,
      height: mediaqueryheight(0.06, context),
      decoration: const BoxDecoration(color: Colors.white24),
      child: Row(
        children: [
          SizedBox(
            width: mediaquerywidth(0.05, context),
          ),
          const Icon(Icons.search),
          SizedBox(
            width: mediaquerywidth(0.05, context),
          ),
          Expanded(
              child: TextField(
            onChanged: (value) {
              isLoading.value = true;
              searchMoviesAndTvShows(value);
            //here
            },
            showCursor: true,
            textAlign: TextAlign.start,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search games, shows, movies..."),
          )),
          SizedBox(width: mediaquerywidth(0.05, context)),
          const Icon(Icons.mic),
          SizedBox(
            width: mediaquerywidth(0.05, context),
          ),
        ],
      ),
    ),
  );
}
