import 'package:flutter/material.dart';

import 'color.dart';

Container buildTitle(String title) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(9),
    color: Color(0xffe0e0e0).withOpacity(0.38),
    child: Text(
      title,
      style: TextStyle(color: mainTextSubColor.withOpacity(0.7)),
    ),
  );
}

SizedBox buildBiggestMargin() {
  return const SizedBox(
    height: 66,
  );
}

SizedBox buildBigMargin() {
  return const SizedBox(
    height: 36,
  );
}

SizedBox buildMiddleMargin() {
  return const SizedBox(
    height: 26,
  );
}

SizedBox buildSmallMargin() {
  return const SizedBox(
    height: 18,
  );
}

Padding buildDesc(String desc) {
  return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        desc,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ));
}

void searching(BuildContext context) {
  dialog(context, "Searching...");
}

void dialog(BuildContext context, String msg) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  msg,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            backgroundColor: Colors.black45,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ));
}
