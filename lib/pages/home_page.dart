import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/payment_page.dart';
import 'package:wallet_app_ui/util/my_button.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';
import 'package:wallet_app_ui/util/reuseable_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PaymentPage(),
            ),
          );
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.monetization_on,
          size: 30,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  // plus button
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 19,
            ),

            // cards

            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                children: [
                  ReuseableCard(
                    balance: 5150.25,
                    cardNumber: 2345679,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.blueGrey.shade500,
                  ),
                  ReuseableCard(
                    balance: 2300.23,
                    cardNumber: 2345679,
                    expiryMonth: 11,
                    expiryYear: 23,
                    color: Colors.blueAccent,
                  ),
                  ReuseableCard(
                    balance: 340.21,
                    cardNumber: 2345679,
                    expiryMonth: 8,
                    expiryYear: 20,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.blueGrey.shade400,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // 3 buttons -> send + pay + bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                      imagePath: 'images/send_money.png', buttonText: 'Send'),
                  MyButton(
                      imagePath: 'images/credit_card.png', buttonText: 'Pay'),
                  MyButton(imagePath: 'images/bill.png', buttonText: 'Bills'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // column ->stats + transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // statistics
                  MyListTile(
                      imagePath: 'images/statistic_analysis.png',
                      tileTitle: 'Statistic',
                      tileSubTitle: 'Payment and Income'),
                  MyListTile(
                      imagePath: 'images/transaction.png',
                      tileTitle: 'Transaction',
                      tileSubTitle: 'Transaction history'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
