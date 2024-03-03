import 'package:flutter/material.dart';
import 'package:netflix/api_functions/api_functions.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/value_notifier/valuenotifer.dart';

class mainposter extends StatelessWidget {
  const mainposter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadtrendingmovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('error :${snapshot.error}');
          } else {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    height: mediaqueryheight(0.60, context),
                    width: double.infinity,
                    color: greyColor,
                    child: Image.network(
                      imageUrl +
                          trendingmovies.value[0]['poster_path'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: mediaqueryheight(0.5, context)),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                              width:
                                  mediaquerywidth(0.30, context),
                              height:
                                  mediaqueryheight(0.05, context),
                              color: whitecolor,
                              child: Center(
                                child: mytext(
                                    "▶ Play",
                                    20,
                                    FontWeight.normal,
                                    blackColor),
                              )),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                              width:
                                  mediaquerywidth(0.30, context),
                              height:
                                  mediaqueryheight(0.05, context),
                              color: Colors.grey,
                              child: Center(
                                child: mytext("✓ My List", 20,
                                    FontWeight.bold, whitecolor),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }
        });
  }
}