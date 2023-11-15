import 'package:flutter/material.dart';

class ReelsGrid extends StatelessWidget {
  const ReelsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 40,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          color: Color.fromARGB(255, 53, 65, 68),
        ),
      ),
    );
  }
}
