import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButtons extends StatelessWidget {
  final color;
  final textColor;
  final String buttontext;

  MyButtons(this.buttontext, this.color, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
            color: color,
            child: Center(
              child: Text(
                buttontext,
                style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
