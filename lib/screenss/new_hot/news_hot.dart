import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/new_hot/widgetss/top_containers.dart';
import 'package:netflix/screenss/new_hot/widgetss/upcoming_movies_back.dart';


class Newspage extends StatelessWidget {
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: mediaqueryheight(0.1, context),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const TopContainers();
                  },
                ),
              ),
              const UpcomingMoviesBackdrop(),
            ],
          ),
        ),
      ),
    );
  }
}

