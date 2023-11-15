import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  const AccountTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 40,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          color: const Color.fromARGB(255, 205, 231, 190),
        ),
      ),
    );
  }
}
