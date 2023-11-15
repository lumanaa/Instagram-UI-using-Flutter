import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/reels_grid.dart';

class UserReels extends StatelessWidget {
  const UserReels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Reels'),
        ),
        body: ReelsGrid());
  }
}
