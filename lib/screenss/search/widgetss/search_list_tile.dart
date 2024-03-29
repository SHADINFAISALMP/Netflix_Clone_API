

import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';


class SearchListTileDisplay extends StatelessWidget {
  const SearchListTileDisplay({
    super.key,
    required this.urls,
    required this.title,
  });

  final String urls;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(10),
          child: SizedBox(
              width: mediaquerywidth(
                  0.25, context),
              height: mediaqueryheight(
                  0.073, context),
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(urls))),
        ),
        SizedBox(
          width: mediaquerywidth(0.02, context),
        ),
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 16),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(Icons.play_circle_fill)
      ],
    );
  }
}