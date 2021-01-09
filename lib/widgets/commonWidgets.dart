import 'package:flutter/material.dart';

SizedBox mySizedBox(
    {@required double myHeight, @required double myWidth, child}) {
  return SizedBox(
    height: double.parse("$myHeight"),
    width: double.parse("$myWidth"),
    child: child,
  );
}

showSnackbar(ScaffoldState key, String text) {
  key.showSnackBar(SnackBar(
    content: Text(text),
    backgroundColor: Colors.blue[900],
  ));
}

Text myDataText({
  String text,
  @required int maxLines,
  TextStyle myTextStyle,
  TextAlign myTextAlign,
}) {
  return Text(
    text ?? "",
    maxLines: maxLines ?? 0,
    textAlign: myTextAlign,
    overflow: TextOverflow.ellipsis,
    style: myTextStyle,
  );
}
