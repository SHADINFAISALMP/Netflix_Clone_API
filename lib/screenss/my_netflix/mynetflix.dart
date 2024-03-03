import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/home_page/widgetss/top_rated.dart';
import 'package:netflix/screenss/home_page/widgetss/trending_movie.dart';
import 'package:netflix/screenss/my_netflix/widgetss/listtiles.dart';
import 'package:netflix/screenss/my_netflix/widgetss/trending_movies_trainers.dart';

class Mynetflixpage extends StatelessWidget {
  const Mynetflixpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: mediaqueryheight(0.20, context),
                  width: mediaquerywidth(0.35, context),
                  child: Image.asset(
                    "assets/images/myprofile2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: mytext("SHADIN", 20, FontWeight.bold),
            ),
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            listTile(Icons.notifications, Colors.red, "Notifications"),
            listTile(Icons.download, Colors.blue, "Downloads"),
            SizedBox(
              height: mediaqueryheight(0.02, context),
            ),
            const Text(
              "TV Shows & Movies You've liked",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 19),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            SizedBox(
              height: mediaqueryheight(0.25, context),
              child: const Trendingmovies(),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            const Text(
              "Trailers You've Watched",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 19),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            SizedBox(
              height: mediaqueryheight(0.20, context),
              child: const TrendingMoviesTrailers(),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            const Text(
              "Top Rated Movies",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 19),
            ),
            SizedBox(
              height: mediaqueryheight(0.01, context),
            ),
            SizedBox(
              height: mediaqueryheight(0.25, context),
              child: const Toprated(),
            ),
          ],
        ),
      ),
    );
  }
}
