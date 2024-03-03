import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';

class OvalContains extends StatelessWidget {
  const OvalContains({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: mediaquerywidth(0.04, context),
        ),
        InkWell(
            child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(80)),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "TV Shows",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
        )),
        SizedBox(
          width: mediaquerywidth(0.03, context),
        ),
        InkWell(
            child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(80)),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Movies",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
        )),
        SizedBox(
          width: mediaquerywidth(0.03, context),
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(80)),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Categories ▼",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}