import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble_stories.dart';
import 'package:instagram_ui/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Kayena',
    'Raphael',
    'Rezef',
    'Xiao',
    'Zhongli',
    'Alhaitham',
    'Izek',
    'Calico'
  ];
  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('INSTAGRAM'),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.favorite_outlined),
                  ),
                  Icon(Icons.share)
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: people[index],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index]);
                },
              ),
            )
          ],
        ));
  }
}
