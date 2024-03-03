import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/home_page/widgetss/main_poster.dart';
import 'package:netflix/screenss/home_page/widgetss/oval_containers.dart';
import 'package:netflix/screenss/home_page/widgetss/popular_movies.dart';
import 'package:netflix/screenss/home_page/widgetss/popular_tvshows.dart';
import 'package:netflix/screenss/home_page/widgetss/top_rated.dart';
import 'package:netflix/screenss/home_page/widgetss/toprated_tvshos.dart';
import 'package:netflix/screenss/home_page/widgetss/trending_movie.dart';
import 'package:netflix/screenss/home_page/widgetss/upcoming_movies.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
                  ),
                  const OvalContains(),
                  SizedBox(
                    height: mediaqueryheight(0.03, context),
                  ),
                    const mainposter(),
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
                  ),
                  const Text(
                    "Trending Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.01, context),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.25, context),
                    child: const Trendingmovies(),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
                  ),
                  const Text(
                    "Top Rated Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.01, context),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.25, context),
                    child: const Toprated(),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
                  ),
                  const Text(
                    "Upcoming Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.01, context),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.25, context),
                    child: const Upcomingmovies(),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.01, context),
                  ),
                  const Text(
                    "Popular Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.40, context),
                    child: const Popularmovies(),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
                  ),
                  const Text(
                    "Top Rated Tv Shows",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.01, context),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.25, context),
                    child: const TopratedTvshows(),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.02, context),
                  ),
                  const Text(
                    "Popular Tv Shows",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.01, context),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.25, context),
                    child: const PopularTvshows(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}











