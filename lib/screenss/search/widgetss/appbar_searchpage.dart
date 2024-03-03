
  import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';


AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: blackColor,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back)),
      actions: [
        Icon(
          Icons.cast,
          size: 20,
          color: whitecolor,
        ),
        SizedBox(
          width: mediaqueryheight(0.02, context),
        ),
      ],
    );
  }