import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';

containers(Color textColor, Color containerColor, String text, context,
    IconData icon) {
  return Container(
    width: double.infinity,
    height: mediaqueryheight(0.07, context),
    decoration: BoxDecoration(
        color: containerColor, borderRadius: BorderRadius.circular(4)),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: textColor,
          ),
          // sizedBoxWidth(10),
          mytext(text, 16, FontWeight.w600, textColor),
        ],
      ),
    ),
  );
}
