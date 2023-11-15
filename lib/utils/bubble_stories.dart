import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  const BubbleStories({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 90,
            height: 90,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
          ),
        ),
        Text(text)
      ],
    );
  }
}
