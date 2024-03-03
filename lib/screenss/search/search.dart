import 'package:flutter/material.dart';
import 'package:netflix/api_functions/api_functions.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/movie_details/movie_details_page.dart';
import 'package:netflix/screenss/search/widgetss/appbar_searchpage.dart';
import 'package:netflix/screenss/search/widgetss/search_box.dart';
import 'package:netflix/screenss/search/widgetss/search_list_tile.dart';
import 'package:netflix/screenss/value_notifier/valuenotifer.dart';

class searchscreen extends StatelessWidget {
  const searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
          child: Column(
        children: [
          searchBox(context),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mediaqueryheight(
                    0.02,
                    context,
                  ),
                  vertical: mediaqueryheight(0.0, context)),
              child: ValueListenableBuilder(
                valueListenable: searchMovieTitles,
                builder: (context, value, child) {
                  return isLoading.value == true
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : value.isEmpty
                          ? Expanded(
                              child: Center(
                              child: mytext("No results found", 16),
                            ))
                          : ListView.builder(
                              itemCount:
                                  searchMovieTitles.value.length,
                              itemBuilder: (context, index) {
                                String title = value[index]['title'] ??
                                    value[index]['name'];
                                late String? url;
                                if (value[index]["poster_path"] != null) {
                                  url = value[index]["poster_path"];
                                } else {
                                  url = value[index]["backdrop_path"];
                                }

                                String urls = url != null
                                    ? imageUrl + url
                                    : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThW3vszDScLtuavCM31FfcECi3KJ9-wo2HqnX1wB0ewQ&s";

                                return SizedBox(
                                  height: mediaqueryheight(0.1, context),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => moviewdetailspage(
                                              valueNotifier:
                                                  searchMovieTitles,
                                              index: index)));
                                    },
                                    child: SearchListTileDisplay(
                                        urls: urls, title: title),
                                  ),
                                );
                              },
                            );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
