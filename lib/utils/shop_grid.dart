import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 40,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          color: Color.fromARGB(255, 233, 183, 191),
        ),
      ),
    );
  }
}
