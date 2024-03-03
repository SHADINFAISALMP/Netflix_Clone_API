import 'package:flutter/material.dart';
import 'package:netflix/api_functions/api_functions.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
import 'package:netflix/screenss/movie_details/bottom_icons.dart';
import 'package:netflix/screenss/movie_details/containers.dart';

// ignore: must_be_immutable, camel_case_types
class moviewdetailspage extends StatelessWidget {
  ValueNotifier valueNotifier;
  int index;

  moviewdetailspage(
      {required this.valueNotifier, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
          backgroundColor: blackColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: whitecolor,
          ),
          actions: [
            Icon(
              Icons.search,
              color: whitecolor,
            ),
            SizedBox(
              width: mediaqueryheight(0.02, context),
            )
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: mediaqueryheight(0.35, context),
              child: Image(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: NetworkImage(
                  valueNotifier.value[index]['poster_path'] == null
                      ? "https://i.pcmag.com/imagery/reviews/05cItXL96l4LE9n02WfDR0h-5.fit_scale.size_760x427.v1582751026.png"
                      : imageUrl + valueNotifier.value[index]['poster_path'],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mytext(
                    valueNotifier.value[index]["title"] ??
                        valueNotifier.value[index]["name"],
                    28,
                    FontWeight.w700,
                  ),
                  SizedBox(height: mediaqueryheight(0.015, context)),
                  containers(Colors.black, Colors.white70, "Play", context,
                      Icons.play_arrow),
                  SizedBox(height: mediaqueryheight(0.01, context)),
                  containers(
                      const Color.fromARGB(209, 255, 255, 255),
                      Colors.white30,
                      "Download",
                      context,
                      Icons.file_download_outlined),
                  SizedBox(height: mediaqueryheight(0.03, context)),
                  mytext(
                      valueNotifier.value[index]['overview'],
                      14,
                      FontWeight.normal,
                      const Color.fromARGB(226, 255, 255, 255)),
                  SizedBox(height: mediaqueryheight(0.03, context)),
                  Column(
                    children: [
                      const BottomIcons(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          mytext("My List", 12, FontWeight.normal, greyColor),
                          mytext("Rate   ", 12, FontWeight.normal, greyColor),
                          mytext("Share", 12, FontWeight.normal, greyColor)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: mediaqueryheight(0.02, context)),
            Center(
                child: Container(
              width: mediaquerywidth(0.2, context),
              height: 5,
              color: Colors.red,
            )),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.white24,
            )
          ],
        ),
      )),
    );
  }
}

