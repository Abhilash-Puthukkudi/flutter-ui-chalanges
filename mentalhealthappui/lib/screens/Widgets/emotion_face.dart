import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmotionsFace extends StatelessWidget {
  final String? face, text;

  const EmotionsFace({Key? key, this.face, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Text(
            face.toString(),
            style: const TextStyle(fontSize: 28),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text.toString(),
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
