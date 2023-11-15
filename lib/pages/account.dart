import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/account_tab1.dart';
import 'package:instagram_ui/utils/account_tab2.dart';
import 'package:instagram_ui/utils/account_tab3.dart';
import 'package:instagram_ui/utils/account_tab4.dart';
import 'package:instagram_ui/utils/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '40',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Posts')
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '4526',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Followers')
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '20',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Following')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'zyunlu ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'her/she',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('I like to create flutter apps')
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text('Edit Profile'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text('Share Profile'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Icon(
                          Icons.person_add_rounded,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BubbleStories(text: 'Highlight-1'),
                    BubbleStories(text: 'Highlight-2'),
                    BubbleStories(text: 'Highlight-3'),
                    BubbleStories(text: 'Highlight-4')
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_4x4),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
