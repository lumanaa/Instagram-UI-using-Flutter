import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[300],
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey[500],
              ),
              Text(
                ' Search',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}
