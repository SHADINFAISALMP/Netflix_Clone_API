import 'package:flutter/material.dart';

mediaqueryheight(double size, BuildContext context) {
  return MediaQuery.of(context).size.height * size;
}

mediaquerywidth(double size, BuildContext context) {
  return MediaQuery.of(context).size.width * size;
}
Color blackColor = Colors.black;
Color whitecolor = Colors.white;
Color greyColor = Colors.grey;

mytext(String text, double size,
    [FontWeight fontWeight = FontWeight.normal, Color color = Colors.white]) {
  return Text(
    text,
    style: TextStyle(fontWeight: fontWeight, color: color, fontSize: size),
  );
}
