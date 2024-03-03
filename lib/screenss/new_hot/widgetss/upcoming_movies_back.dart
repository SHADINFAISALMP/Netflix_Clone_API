import 'package:flutter/material.dart';
import 'package:netflix/api_functions/api_functions.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/new_hot/date_convert.dart';
import 'package:netflix/screenss/value_notifier/valuenotifer.dart';

class UpcomingMoviesBackdrop extends StatelessWidget {
  const UpcomingMoviesBackdrop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadupcomingmovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('error :${snapshot.error}');
        } else {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: upcomingmovies.value.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: mediaqueryheight(0.02, context),
                      ),
                      Text(
                        "${month[index]}\n ${dates[index]}",
                        style: TextStyle(color: whitecolor),
                      ),
                      const SizedBox(
                          width:
                              8), // Adjust the spacing between Text and Container
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: mediaqueryheight(0.25, context),
                          width: mediaquerywidth(0.9, context),
                          child: Image.network(
                            imageUrl +
                                upcomingmovies.value[index]
                                    ['backdrop_path'],
                            fit: BoxFit.cover,
                          ), // Set a width for the container
                        ),
                      ),
                    ],
                  ),
    
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      upcomingmovies.value[index]['title'],
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      upcomingmovies.value[index]['overview'],
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: greyColor,
                          fontSize: 12),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: mediaqueryheight(0.03, context),
                  ),
                  // Add your other widgets for each item
                ],
              );
            },
          );
        }
      },
    );
  }
}

