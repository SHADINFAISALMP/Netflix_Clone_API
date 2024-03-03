import 'package:flutter/material.dart';
import 'package:netflix/api_functions/api_functions.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/movie_details/movie_details_page.dart';
import 'package:netflix/screenss/value_notifier/valuenotifer.dart';

class Toprated extends StatelessWidget {
  const Toprated({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadtoprated(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('error :${snapshot.error}');
          } else {
            return InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topratedmovies.value.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      moviewdetailspage(
                                          valueNotifier:
                                              topratedmovies,
                                          index: index)));
                        },
                        child: Container(
                          color: greyColor,
                          child: Image.network(
                            imageUrl +
                                topratedmovies.value[index]
                                    ['poster_path'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
        });
  }
}
