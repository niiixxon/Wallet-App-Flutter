// ignore_for_file: prefer_const_constructors, duplicate_ignore, dead_code

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;

  const MyListTile({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Statistics
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // Icon
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              child: Image.asset(iconImagePath),
            ),
            SizedBox(width: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tileTitle,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(tileSubTitle,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600])),
              ],
            ),
          ],
        ),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined)),
      ],
    );
  }
}
