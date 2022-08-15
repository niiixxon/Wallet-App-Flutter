// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, unused_label

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromRGBO(166, 5, 26, 1),
          child: Icon(Icons.monetization_on_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 28,
              ),
            ),
          ]),
        ),
        body: SafeArea(
          child: Column(
            children: [
              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('My',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold)),
                        // ignore: prefer_const_constructors
                        Text(
                          'Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    //Plus Button
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 25),

              // Cards
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5250.20,
                      cardNumber: 1234,
                      expiryMonth: 12,
                      expiryYear: 22,
                      color: Color.fromRGBO(166, 5, 26, 1),
                    ),
                    MyCard(
                      balance: 23689.20,
                      cardNumber: 1234,
                      expiryMonth: 12,
                      expiryYear: 22,
                      color: Color.fromRGBO(150, 30, 50, 1),
                    ),
                    MyCard(
                      balance: 67250.20,
                      cardNumber: 1234,
                      expiryMonth: 12,
                      expiryYear: 22,
                      color: Color.fromRGBO(0, 89, 79, 1),
                    ),
                    MyCard(
                      balance: 9170.20,
                      cardNumber: 1234,
                      expiryMonth: 12,
                      expiryYear: 22,
                      color: Color.fromRGBO(41, 82, 148, 1),
                    ),
                    MyCard(
                      balance: 6250.20,
                      cardNumber: 1234,
                      expiryMonth: 12,
                      expiryYear: 22,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Colors.grey.shade800,
                      dotColor: Colors.grey)),

              SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // send button
                    MyButton(
                        iconImagePath: 'lib/icons/send-money.png',
                        buttonText: 'send'),

                    // pay button
                    MyButton(
                        iconImagePath: 'lib/icons/debit-card.png',
                        buttonText: 'pay'),

                    // bills button
                    MyButton(
                        iconImagePath: 'lib/icons/bill.png',
                        buttonText: 'bills'),
                  ],
                ),
              ),

              // column -> stats + transactions

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // stats
                    MyListTile(
                      iconImagePath: 'lib/icons/analysis.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Payments and Income',
                    ),

                    SizedBox(height: 25),
                    // transactions
                    MyListTile(
                      iconImagePath: 'lib/icons/cash-flow.png',
                      tileTitle: 'Transactions',
                      tileSubTitle: 'Last 30 days',
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
