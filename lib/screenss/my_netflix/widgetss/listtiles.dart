import 'package:flutter/material.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';
listTile(IconData icon, Color color, String text) {
  return ListTile(
    title: mytext(text, 20, FontWeight.w500),
    trailing: Icon(
      Icons.arrow_forward_ios_rounded,
      color: whitecolor,
    ),
    leading: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Icon(
          icon,
          color: whitecolor,
        ),
      ),
    ),
  );
}