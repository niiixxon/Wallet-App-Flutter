// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                Row(
                  children: [
                    Image.asset(
                      'lib/icons/visa.png',
                      height: 50,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card Number
                Text(
                  cardNumber.toString(),
                  // ignore: prefer_const_constructors
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                // card Expiry Date
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
